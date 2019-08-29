;###########################################################################
;
; FILE:  sqrt.asm
;
; TITLE: Fast 32-bit floating-point sqrt for the C28x + Floating-Point Unit.
;
; DESCRIPTION:
;
;    This function computes a 32-bit floating point sqrt..
;
; FUNCTIONS:
;
;    float_t sqrt_fastRTS(float_t x)
;
; ASSUMPTIONS:
;
;
; ALGORITHM:
;
;              Ye = Estimate(1/sqrt(X));
;              Ye = Ye*(1.5 - Ye*Ye*X*0.5)
;              Ye = Ye*(1.5 - Ye*Ye*X*0.5)
;              Y  = sqrt(X) = X*Ye
;
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
        .global     _sqrt_fastRTS
        .text

_sqrt_fastRTS:
                                        ; R0H = X on entry
        EISQRTF32   R1H, R0H            ; R1H = Ye = Estimate(1/sqrt(X))
        MPYF32      R2H, R0H, #0.5      ; R2H = X*0.5
        MPYF32      R3H, R1H, R1H       ; R3H = Ye*Ye
        NOP
        MPYF32      R3H, R3H, R2H       ; R3H = Ye*Ye*X*0.5
        NOP
        SUBF32      R3H, #1.5, R3H      ; R3H = 1.5 - Ye*Ye*X*0.5
        NOP
        MPYF32      R1H, R1H, R3H       ; R2H = Ye = Ye*(1.5 - Ye*Ye*X*0.5)
        NOP
        MPYF32      R3H, R1H, R2H       ; R3H = Ye*X*0.5
        NOP
        MPYF32      R3H, R1H, R3H       ; R3H = Ye*Ye*X*0.5
        NOP
        SUBF32      R3H, #1.5, R3H      ; R3H = 1.5 - Ye*Ye*X*0.5
        CMPF32      R0H, #0.0           ; Check if X == 0
        MPYF32      R1H, R1H, R3H       ; R2H = Ye = Ye*(1.5 - Ye*Ye*X*0.5)
        NOP
        MOV32       R1H, R0H, EQ        ; If X is zero, change the Ye estimate to 0
        MPYF32      R0H, R0H, R1H       ; R0H = Y = X*Ye = sqrt(X)
        LRETR
        .endasmfunc
;===========================================================================
; End of File.
;===========================================================================
