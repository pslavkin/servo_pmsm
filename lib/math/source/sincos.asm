; ###########################################################################
;
; FILE:  sincos.asm
;
; TITLE: Fast combined sin and cos function for the C28x + Floating-Point Unit.
;
; DESCRIPTION:
;
;    This function computes a 32-bit floating point sin and cos given a
;    radian input.  This function uses the FPU math tables to
;    compute the sin and cos.
;
; FUNCTIONS:
;
;    void sincos_fastRTS(float_t angle_rad, float_t *pSin, float_t *pCos)
;
; ASSUMPTIONS:
;
;     * FPUsinTable and FPUcosTable are linked into the project.
;
; ALGORITHM:
;
;       The sin and cos values are calculated as follows:
;
;       1) The offset into a 512 word sin/cos table is calculated:
;
;          k = 0x1FF & (int(Radian*512/(2*pi)))
;
;
;       2) The fractional component between table samples is
;          calculated:
;
;          x = fract(Radian*512/2*pi) * (2*pi)/512
;
;       3) The output values are calculated as follows:
;
;          sin(Radian) = S(k) + x*( C(k) + x*(-0.5*S(k) - x*0.166667*C(k)))
;          cos(Radian) = C(k) + x*(-S(k) + x*(-0.5*C(k) + x*0.166667*S(k)))
;
;          where  S(k) = Sin table value at offset "k"
;                 C(k) = Cos table value at offset "k"
; ###########################################################################
; $TI Release: MotorControl SDK v2.00.00.00 $
; $Release Date: Wed Jun 19 14:21:49 CDT 2019 $
; $Copyright:
;// Copyright (C) 2017-2018 Texas Instruments Incorporated - http://www.ti.com/
;//
;// Redistribution and use in source and binary forms, with or without
;// modification, are permitted provided that the following conditions
;// are met:
;// 
;//   Redistributions of source code must retain the above copyright
;//   notice, this list of conditions and the following disclaimer.
;// 
;//   Redistributions in binary form must reproduce the above copyright
;//   notice, this list of conditions and the following disclaimer in the
;//   documentation and/or other materials provided with the
;//   distribution.
;// 
;//   Neither the name of Texas Instruments Incorporated nor the names of
;//   its contributors may be used to endorse or promote products derived
;//   from this software without specific prior written permission.
;// 
;// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
;// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
;// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
;// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
;// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
;// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
;// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
;// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
;// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
;// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
;// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
;// $
; ###########################################################################

       .page
       .global _sincos_fastRTS
       .ref    _FPUsinTable
       .ref    _FPUcosTable
       .text
_sincos_fastRTS:                     ; On entry: R0H = Radian, XAR4 = PtrSin, XAR5 = PtrCos
        MOVIZ     R1H,#0x42A2        ; R1H = 512/(2*pi) = 512/6.28318531 = 81.4873309
        MOVXI     R1H,#0xF983

        MPYF32    R0H, R0H, R1H      ; R0H = Radian * 512/(2*pi)
     || MOV32     *SP++, R4H         ; store R4H on the stack

        MOVIZ     R2H,#0x3C49        ; R2H = (2*pi)/512 = 6.28318531/512
        MOVXI     R2H,#0x0FDB        ;     = 0x3C490FDB or 0.012271846644531
        F32TOI32  R1H, R0H           ; R1H = int(Radian * 512/(2*pi))
        MOVL      XAR6,#_FPUcosTable
        MOVL      XAR7,#_FPUsinTable
        MOV32     ACC, R1H           ; ACC = int(Radian *512/(2*pi))
        AND       @AL,#0x1FF
        LSL       AL,#1
        MOVZ      AR0,@AL            ; AR0 = Index into "sin/cos" table = k
        FRACF32   R0H, R0H           ; R0H = fract(Radian*512/(2*pi))
        MOVIZ     R1H,#0x3E2A        ; R1H = 0.166667 (0x3E2AAAAB)
        MOVXI     R1H,#0xAAAB

        MPYF32    R0H, R0H, R2H      ; R0H = x = fract(Radian*512/(2*pi)) * (2*pi)/512
     || MOV32     R3H, *+XAR6[AR0]   ; R3H = C(k)

        MPYF32    R2H, R1H, R3H      ; R2H = 0.166667*C(k)
     || MOV32     R4H, *+XAR7[AR0]   ; R4H = S(k)

        MPYF32    R1H, R1H, R4H      ; R1H = 0.166667*S(k)
        MPYF32    R2H, R0H, R2H      ; R2H = x*0.166667*C(k)

        MPYF32    R4H, -0.5, R4H     ; R4H = -0.5*S(k)
        MPYF32    R3H, -0.5, R3H     ; R3H = -0.5*C(k)

        MPYF32    R1H, R0H, R1H      ; R1H = x*0.166667*S(k)
     || SUBF32    R2H, R4H, R2H      ; R2H = -0.5*S(k) - x*0.166667*C(k)

        MOV32     R4H, *+XAR6[AR0]   ; R4H = C(k)

        ADDF32    R1H, R3H, R1H      ; R1H = -0.5*C(k) + x*0.166667*S(k)
     || MOV32     R3H, *+XAR7[AR0]   ; R3H = S(k)

        MPYF32    R2H, R0H, R2H      ; R2H = x*(-0.5*S(k) - x*0.166667*C(k))
        MPYF32    R1H, R0H, R1H      ; R1H = x*(-0.5*C(k) + x*0.166667*S(k))
        ADDF32    R2H, R4H, R2H      ; R2H = C(k) + x*(-0.5*S(k) - x*0.166667*C(k))
        SUBF32    R1H, R1H, R3H      ; R1H = -S(k) + x*(-0.5*C(k) + x*0.166667*S(k))

        MPYF32    R2H, R0H, R2H      ; R2H = x*(C(k) + x*(-0.5*S(k) - x*0.166667*C(k)))
     || MOV32     R4H, *+XAR7[AR0]   ; R4H = S(k)

        MPYF32    R1H, R0H, R1H      ; R1H = x*(-S(k) + x*(-0.5*C(k) + x*0.166667*S(k)))
     || MOV32     R3H, *+XAR6[AR0]   ; R3H = C(k)

        ADDF32    R2H, R4H, R2H      ; R2H = S(k) + x*(C(k) + x*(-0.5*S(k) - x*0.166667*C(k)))
     || MOV32     R4H, *--SP         ; Restore R4H from the stack

        ADDF32    R1H, R3H, R1H      ; R1H = C(k) + x*(-S(k) + x*(-0.5*C(k) + x*0.166667*S(k)))

        MOV32     *XAR4, R2H         ; *PtrSin = R2H
        MOV32     *XAR5, R1H         ; *PtrCos = R1H

        LRETR
           .endasmfunc
;===========================================================================
; End of File.
;===========================================================================
