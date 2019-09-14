# PMSM Servo motor driver based on C2000

> development of a customized high precision microcontrolled permament magnet embedded servo motor

<img src = "doc/pics/TMDXIDDK379D.jpeg" width = "400" height = "200"/> <img src = "doc/pics/controlcard.jpeg"  width = "200" height = "150"/> <img src = "doc/pics/launchpad.jpeg"    width = "200" height = "150"/> <img src = "doc/pics/lab1.jpg"          width = "300" height = "200"/>
---
## Progress
<!--- 
- ![rojo](https://placehold.it/15/FF0000/000000?text=+)
- ![amarillo](https://placehold.it/15/FFFF00/000000?text=+)
- ![azul](https://placehold.it/15/0000FF/000000?text=+)
- ![verde](https://placehold.it/15/00FF00/000000?text=+)
embedded gist
https://gist.github.com/rxaviers/7360908
-->

- :heavy_check_mark: Soft tools (compiler, css. eclipse, cmd)
- :heavy_check_mark: Hard tools (blue big board, launchpad, mootors)
- :heavy_check_mark: Blinky
- :heavy_check_mark: Customized cooperative RTOS
- :heavy_check_mark: SCI based command console
- :heavy_check_mark: ADC module single ended 15bits
- :heavy_check_mark: PWM two channel as encoder output
- :heavy_check_mark: IQMath RAM math library for math acceleration
- :heavy_check_mark: EQEP cuadrature decoder high and low speed and position managemenr
- :heavy_check_mark: Internal temperature sensor measurement using ADC 
- :heavy_check_mark: Add schedule module to manage periodic task
- :heavy_check_mark: Spin motor reading his pos and speed
- :heavy_check_mark: PWM 3 phase openloop (added sample video)
- :heavy_check_mark: Port the project to controlBoard and do the fitst spin! (see video)
- :heavy_check_mark: controlBoard closed loop with LEM fitst aproach! (see video)
- :heavy_check_mark: PWM callibrate using ipark and svgen
- :heavy_check_mark: PWM follows mechanical angle 'current loop' at 5k
- :heavy_check_mark: Iq inchoate PI closed loop, but works
- :heavy_check_mark: MOLDOVA here I'm! spinning szgh13380CC motors
- :heavy_check_mark: fanuc servomotor experimetation
- :heavy_check_mark: mitsubishi servomotor experimetation
- :heavy_check_mark: step/dir emulation from console works!
- :heavy_check_mark: first set of curves controlling pos+vel+iq
- :heavy_check_mark: absolute position calc from realative in feedback
- :heavy_check_mark: sin generator sinusoidal and step function work
- :heavy_check_mark: step dir using isr to connect to a controller
- :heavy_check_mark: testing on a 4 poles motor and it work
- :heavy_check_mark: prototype arrives! It's huge!
- :construction:     bode plot
- :construction:     scratch materplan
- :construction:     merging example fcl with my own code
- :construction:     trying to manage BiA128 fanuc encoder
- :construction:     Testing current loop parameters
- :construction:     Speed loop
- :red_circle:       Sigma delta ADC decoder
- :red_circle:       Shunt current close loop
- :red_circle:       IQMath ROM math library for math acceleration on C2000 ROM
- :red_circle:       Dual core compilation
- :red_circle:       Dual core interconnect IPC


---
## Table of Contents

> If you're `README` has a lot of info, section headers might be nice.

- [Installation](#installation)
- [motorsszch](#motorsszch)
- [fanuc](#fanuc)
- [mitsubishi](#mitsubishi)
- [gnuplot](#gnuplot)
- [Features](#features)
- [proto](#proto)
- [Contributing](#contributing)
- [Team](#team)
- [FAQ](#faq)
- [Support](#support)
- [Hierarchy](#hierarchy)
- [License](#license)
---
## SCI gif demo
<img src="doc/videos/sci.gif" width="600" height="300"/>

## PWM complementary demo
<img src="doc/videos/pwm.gif" width="600" height="300"/>

## Spin motor manually. Encoder test
<img src="doc/videos/encoder_manual.gif" width="600" height="300"/>

## 3PH generator open loop with leds, but fully functional
<img src="doc/videos/pwm_3ph_openloop.gif" width="600" height="300"/>

## First Motor Spin, open loop, with blue board
<img src="doc/videos/level2open_loop.gif" width="600" height="300"/>

## First Motor Spin, closed loop, with blue board first aproach
<img src="doc/videos/level5closed_loop.gif" width="600" height="300"/>

## moldova
### here I'm

<img src="doc/pics/pablo_en_moldova.jpg" width="400" height="300"/> <img src="doc/pics/moldova.jpg" width="250" height="300"/> 


## motorsszch
### layout

I'm beggining the test using this motor

<img src="doc/pics/motor_szgh.jpg" width="300" height="150"/>

### pinout qep

Take care about the pinout of CN2, it's refered as in the driver not regarding the pinout
indicating in the DB15 connector

<img src="doc/pics/motor_szgh_pinout.jpg" width="300" height="150"/>

I figure out the original pinout and parameters from the chines manufacturer:

<img src="doc/pics/motor_szgh_pinout_chinese.jpg" width="700" height="150"/>
<img src="doc/pics/motor_szgh_parameters.jpg" width="400" height="650"/>

### szgh13380CC in action

There it's a big motor in actiion to test if the encoder work as we suspect:

<img src="doc/videos/szgh13380cc_runnning.gif" width="600" height="300"/>

## fanuc

I'd manage to figure out that inside fanuc encoder it has all kind of output not only the
absolute position encoder, like analog sin/cos and incremental quadradture

<img src="doc/videos/fanuc_analog_output.gif"      width="600" height="300"/>
<img src="doc/videos/fanuc_qep_output.gif"         width="600" height="300"/>

fanuc encoder pinout from datasheet pag 235

<img src="doc/pics/fanuc_encoder_pinout_datasheet.png"   width="600" height="300"/>
<img src="doc/pics/fanuc_encoder_pinout.jpg"             width="400" height="400"/>

## mitsubishi

trying to test a servo motor mitsubishi from a stopped machine that has an absolute encoder
with an alarm. I'd manage to test the analog output but nor the absolute output becouse I
haven't their protocol, but at least I measure inside and aquire power supply pinout asi in
pictures:

<img src="doc/pics/mitsubishi_encoder1.jpg" width="400" height="200"/>
<img src="doc/pics/mitsubishi_encoder2.jpg" width="400" height="200"/>
<img src="doc/pics/mitsubishi_motor.jpg"    width="400" height="200"/>

## gnuplot

I've addedd gnuplot dir to visualize the data from servodriver using a set of log and also
recompile picocomo to add log functionality. There are a first curves:

<img src="doc/pics/step1.png"    width="800" height="400"/>
<img src="doc/videos/step1.gif"  width="300" height="400"/>

I've added sinusoidal and step function generator to test the response, see the videos and
figures:

<img src="doc/pics/step2.png"    width="800" height="400"/>
<img src="doc/videos/step2.gif"  width="500" height="400"/>

<img src="doc/pics/sin1.png"    width="800" height="400"/>
<img src="doc/videos/sin1.gif"  width="500" height="400"/>

## masterplan

<img src="doc/pics/master_plan.svg"    width="800" height="800"/>

## 4 poles motor test

testing a 4 poles instead of 8  and mixing encoders

<img src="doc/pics/poles4.jpg" width="400" /> 

## proto

...and comes the prototype!! ? It's more than a proto!

<img src="doc/pics/proto2.jpg" width="400" /> <img src="doc/pics/proto1.jpg" height="400" /> <img src="doc/pics/proto3.jpg" width="400" />

## Hierarchy

<!-- tree --ignore-case -L 3 -I "*utils*|*user*|*target*|*Debug*|Release|include|driverlib|tags|*types_c*" -->

```ruby

.
├── 2837xD_FLASH_lnk_cpu1_cmd
├── 2837xD_FLASH_lnk_cpu1.cmd
├── 2837xD_RAM_lnk_cpu1_cmd
├── 2837xD_RAM_lnk_cpu1.cmd
├── Debug
│   ├── ccsObjs.opt
│   ├── driverlib
│   │   ├── adc.d
│   │   ├── adc.obj
│   │   ├── asysctl.d
│   │   ├── asysctl.obj
│   │   ├── can.d
│   │   ├── can.obj
│   │   ├── cla.d
│   │   ├── cla.obj
│   │   ├── cmpss.d
│   │   ├── cmpss.obj
│   │   ├── cputimer.d
│   │   ├── cputimer.obj
│   │   ├── dac.d
│   │   ├── dac.obj
│   │   ├── dcsm.d
│   │   ├── dcsm.obj
│   │   ├── dma.d
│   │   ├── dma.obj
│   │   ├── ecap.d
│   │   ├── ecap.obj
│   │   ├── emif.d
│   │   ├── emif.obj
│   │   ├── epwm.d
│   │   ├── epwm.obj
│   │   ├── eqep.d
│   │   ├── eqep.obj
│   │   ├── flash.d
│   │   ├── flash.obj
│   │   ├── gpio.d
│   │   ├── gpio.obj
│   │   ├── hrpwm.d
│   │   ├── hrpwm.obj
│   │   ├── i2c.d
│   │   ├── i2c.obj
│   │   ├── interrupt.d
│   │   ├── interrupt.obj
│   │   ├── mcbsp.d
│   │   ├── mcbsp.obj
│   │   ├── memcfg.d
│   │   ├── memcfg.obj
│   │   ├── sci.d
│   │   ├── sci.obj
│   │   ├── sdfm.d
│   │   ├── sdfm.obj
│   │   ├── spi.d
│   │   ├── spi.obj
│   │   ├── subdir_rules.mk
│   │   ├── subdir_vars.mk
│   │   ├── sysctl.d
│   │   ├── sysctl.obj
│   │   ├── upp.d
│   │   ├── upp.obj
│   │   ├── version.d
│   │   ├── version.obj
│   │   ├── xbar.d
│   │   └── xbar.obj
│   ├── lib
│   │   ├── subdir_rules.mk
│   │   └── subdir_vars.mk
│   ├── libraries
│   │   ├── control
│   │   │   ├── ctrl
│   │   │   │   └── source
│   │   │   │       ├── ctrl.d
│   │   │   │       ├── subdir_rules.mk
│   │   │   │       └── subdir_vars.mk
│   │   │   ├── fwc
│   │   │   │   └── source
│   │   │   │       ├── fwc.d
│   │   │   │       ├── subdir_rules.mk
│   │   │   │       └── subdir_vars.mk
│   │   │   ├── mtpa
│   │   │   │   └── source
│   │   │   │       ├── mtpa.d
│   │   │   │       ├── subdir_rules.mk
│   │   │   │       └── subdir_vars.mk
│   │   │   ├── pi
│   │   │   │   └── source
│   │   │   │       ├── pi.d
│   │   │   │       ├── subdir_rules.mk
│   │   │   │       └── subdir_vars.mk
│   │   │   ├── pid
│   │   │   │   └── source
│   │   │   │       ├── pid.d
│   │   │   │       ├── subdir_rules.mk
│   │   │   │       └── subdir_vars.mk
│   │   │   ├── vsf
│   │   │   │   └── source
│   │   │   │       ├── subdir_rules.mk
│   │   │   │       ├── subdir_vars.mk
│   │   │   │       └── vsf.d
│   │   │   └── vs_freq
│   │   │       └── source
│   │   │           ├── subdir_rules.mk
│   │   │           ├── subdir_vars.mk
│   │   │           └── vs_freq.d
│   │   ├── fcl
│   │   │   └── lib
│   │   │       ├── subdir_rules.mk
│   │   │       └── subdir_vars.mk
│   │   ├── filter
│   │   │   ├── filter_fo
│   │   │   │   └── source
│   │   │   │       ├── filter_fo.d
│   │   │   │       ├── subdir_rules.mk
│   │   │   │       └── subdir_vars.mk
│   │   │   ├── filter_so
│   │   │   │   └── source
│   │   │   │       ├── filter_so.d
│   │   │   │       ├── subdir_rules.mk
│   │   │   │       └── subdir_vars.mk
│   │   │   └── offset
│   │   │       └── source
│   │   │           ├── offset.d
│   │   │           ├── subdir_rules.mk
│   │   │           └── subdir_vars.mk
│   │   ├── math
│   │   │   └── source
│   │   │       ├── FPUmathTables.obj
│   │   │       ├── sincos.obj
│   │   │       ├── sqrt.obj
│   │   │       ├── subdir_rules.mk
│   │   │       └── subdir_vars.mk
│   │   ├── observers
│   │   │   ├── est
│   │   │   │   └── source
│   │   │   │       ├── subdir_rules.mk
│   │   │   │       ├── subdir_vars.mk
│   │   │   │       ├── user.d
│   │   │   │       └── user_dm.d
│   │   │   ├── fast
│   │   │   │   └── lib
│   │   │   │       └── f28004x
│   │   │   │           ├── subdir_rules.mk
│   │   │   │           └── subdir_vars.mk
│   │   │   └── slip
│   │   │       └── source
│   │   │           ├── slip.d
│   │   │           ├── subdir_rules.mk
│   │   │           └── subdir_vars.mk
│   │   ├── sfra
│   │   │   ├── examples
│   │   │   │   ├── cmd
│   │   │   │   │   ├── subdir_rules.mk
│   │   │   │   │   └── subdir_vars.mk
│   │   │   │   ├── drivers
│   │   │   │   │   └── f28004x
│   │   │   │   │       └── source
│   │   │   │   │           ├── device.d
│   │   │   │   │           ├── sfra_examples_hal.d
│   │   │   │   │           ├── subdir_rules.mk
│   │   │   │   │           └── subdir_vars.mk
│   │   │   │   └── example1_stb
│   │   │   │       └── source
│   │   │   │           ├── example1_stb.d
│   │   │   │           ├── subdir_rules.mk
│   │   │   │           └── subdir_vars.mk
│   │   │   ├── gui
│   │   │   │   ├── source
│   │   │   │   │   ├── sfra_gui_scicomms_driverlib.d
│   │   │   │   │   ├── subdir_rules.mk
│   │   │   │   │   └── subdir_vars.mk
│   │   │   │   ├── subdir_rules.mk
│   │   │   │   └── subdir_vars.mk
│   │   │   └── lib
│   │   │       ├── subdir_rules.mk
│   │   │       └── subdir_vars.mk
│   │   ├── transforms
│   │   │   ├── clarke
│   │   │   │   └── source
│   │   │   │       ├── clarke.d
│   │   │   │       ├── subdir_rules.mk
│   │   │   │       └── subdir_vars.mk
│   │   │   ├── ipark
│   │   │   │   └── source
│   │   │   │       ├── ipark.d
│   │   │   │       ├── subdir_rules.mk
│   │   │   │       └── subdir_vars.mk
│   │   │   ├── park
│   │   │   │   └── source
│   │   │   │       ├── park.d
│   │   │   │       ├── subdir_rules.mk
│   │   │   │       └── subdir_vars.mk
│   │   │   └── svgen
│   │   │       └── source
│   │   │           ├── subdir_rules.mk
│   │   │           ├── subdir_vars.mk
│   │   │           ├── svgen_current.d
│   │   │           └── svgen.d
│   │   └── utilities
│   │       ├── angle_gen
│   │       │   └── source
│   │       │       ├── angle_gen.d
│   │       │       ├── subdir_rules.mk
│   │       │       └── subdir_vars.mk
│   │       ├── cpu_time
│   │       │   └── source
│   │       │       ├── cpu_time.d
│   │       │       ├── subdir_rules.mk
│   │       │       └── subdir_vars.mk
│   │       ├── datalog
│   │       │   └── source
│   │       │       ├── datalog.d
│   │       │       ├── dlog_4ch_f.d
│   │       │       ├── subdir_rules.mk
│   │       │       └── subdir_vars.mk
│   │       ├── diagnostic
│   │       │   └── source
│   │       │       ├── graph.d
│   │       │       ├── subdir_rules.mk
│   │       │       └── subdir_vars.mk
│   │       ├── queue
│   │       │   └── source
│   │       │       ├── queue.d
│   │       │       ├── subdir_rules.mk
│   │       │       └── subdir_vars.mk
│   │       └── traj
│   │           └── source
│   │               ├── subdir_rules.mk
│   │               ├── subdir_vars.mk
│   │               └── traj.d
│   ├── makefile
│   ├── objects.mk
│   ├── sources.mk
│   ├── src
│   │   ├── adc_.d
│   │   ├── adc_.obj
│   │   ├── cbuffer.d
│   │   ├── cbuffer.obj
│   │   ├── device.d
│   │   ├── device.obj
│   │   ├── eqep_.d
│   │   ├── eqep_.obj
│   │   ├── events.d
│   │   ├── events.obj
│   │   ├── everythings.d
│   │   ├── everythings.obj
│   │   ├── F2837xD_CodeStartBranch.obj
│   │   ├── fcl_qep_f2837x_tmdxiddk.d
│   │   ├── leds.d
│   │   ├── leds.obj
│   │   ├── main.d
│   │   ├── main.obj
│   │   ├── parser.d
│   │   ├── parser.obj
│   │   ├── pwm.d
│   │   ├── schedule.d
│   │   ├── schedule.obj
│   │   ├── scia.d
│   │   ├── scia.obj
│   │   ├── sm.d
│   │   ├── sm.obj
│   │   ├── subdir_rules.mk
│   │   ├── subdir_vars.mk
│   │   ├── systick.d
│   │   ├── systick.obj
│   │   ├── wdog.d
│   │   └── wdog.obj
│   ├── subdir_rules.mk
│   ├── subdir_vars.mk
│   └── utils
│       ├── cmdline.d
│       ├── subdir_rules.mk
│       ├── subdir_vars.mk
│       ├── ustdlib.d
│       └── ustdlib.obj
├── doc
│   ├── datasheet
│   │   ├── controlBoard.pdf
│   │   ├── controlBoard_sch.pdf
│   │   ├── fanuc_A860-2020-T301_pinout.txt
│   │   ├── fanuc_bia128.pdf
│   │   ├── fanuc_serie_beta.pdf
│   │   ├── fcl_sensored_pmsm_iddk_users_guide.pdf
│   │   ├── IndutrialDrivesRev[2.2.1].pdf
│   │   ├── spru514_c_compiler.pdf
│   │   ├── sprui77c_launchpad.pdf
│   │   ├── spruip4.pdf
│   │   └── spruiq4.pdf
│   ├── pics
│   │   ├── controlcard.jpeg
│   │   ├── fanuc_encoder_pinout_datasheet.png
│   │   ├── fanuc_encoder_pinout.jpg
│   │   ├── launchpad_detailed.jpg
│   │   ├── launchpad.jpeg
│   │   ├── mitsubishi_encoder1.jpg
│   │   ├── mitsubishi_encoder2.jpg
│   │   ├── mitsubishi_motor.jpg
│   │   ├── moldova.jpg
│   │   ├── motor_szgh.jpg
│   │   ├── motor_szgh_parameters.jpg
│   │   ├── motor_szgh_pinout_chinese.jpg
│   │   ├── motor_szgh_pinout.jpg
│   │   └── TMDXIDDK379D.jpeg
│   ├── ref
│   │   ├── 3-Phase AC Motor Controller.pdf
│   │   ├── AN1958_NXP.pdf
│   │   ├── eqep_ex2_calculation.xls
│   │   ├── JCRA2010_modules_Clarke_publicado.pdf
│   │   ├── pid_demistified.pdf
│   │   ├── servo_control.pdf
│   │   └── SF2_MC_Park_InvPark_Clarke_InvClarke_Transforms_UG.pdf
│   └── videos
│       ├── encoder_manual.gif
│       ├── fanuc_analog_output.gif
│       ├── fanuc_analog_output.mp4
│       ├── fanuc_qep_output.gif
│       ├── fanuc_qep_output.mp4
│       ├── info.txt
│       ├── level2open_loop.gif
│       ├── level5closed_loop.gif
│       ├── pwm_3ph_openloop.gif
│       ├── pwm.gif
│       ├── sci.gif
│       ├── speedup_fanuc_analog_output.mp4
│       ├── speedup_fanuc_qep_output.mp4
│       └── szgh13380cc_runnning.gif
├── driverlib
│   ├── adc.c
│   ├── adc.h
│   ├── asysctl.c
│   ├── asysctl.h
│   ├── can.c
│   ├── can.h
│   ├── cla.c
│   ├── cla.h
│   ├── cmpss.c
│   ├── cmpss.h
│   ├── cpu.h
│   ├── cputimer.c
│   ├── cputimer.h
│   ├── dac.c
│   ├── dac.h
│   ├── dcsm.c
│   ├── dcsm.h
│   ├── debug.h
│   ├── device.h
│   ├── dma.c
│   ├── dma.h
│   ├── driverlib.h
│   ├── ecap.c
│   ├── ecap.h
│   ├── emif.c
│   ├── emif.h
│   ├── epwm.c
│   ├── epwm.h
│   ├── eqep.c
│   ├── eqep.h
│   ├── flash.c
│   ├── flash.h
│   ├── gpio.c
│   ├── gpio.h
│   ├── hrpwm.c
│   ├── hrpwm.h
│   ├── i2c.c
│   ├── i2c.h
│   ├── inc
│   │   ├── hw_adc.h
│   │   ├── hw_asysctl.h
│   │   ├── hw_can.h
│   │   ├── hw_cla.h
│   │   ├── hw_clbxbar.h
│   │   ├── hw_cmpss.h
│   │   ├── hw_cputimer.h
│   │   ├── hw_dac.h
│   │   ├── hw_dcsm.h
│   │   ├── hw_dma.h
│   │   ├── hw_ecap.h
│   │   ├── hw_emif.h
│   │   ├── hw_epwm.h
│   │   ├── hw_epwmxbar.h
│   │   ├── hw_eqep.h
│   │   ├── hw_flash.h
│   │   ├── hw_gpio.h
│   │   ├── hw_hrpwm.h
│   │   ├── hw_i2c.h
│   │   ├── hw_inputxbar.h
│   │   ├── hw_ints.h
│   │   ├── hw_ipc.h
│   │   ├── hw_mcbsp.h
│   │   ├── hw_memcfg.h
│   │   ├── hw_memmap.h
│   │   ├── hw_nmi.h
│   │   ├── hw_outputxbar.h
│   │   ├── hw_pie.h
│   │   ├── hw_sci.h
│   │   ├── hw_sdfm.h
│   │   ├── hw_spi.h
│   │   ├── hw_sysctl.h
│   │   ├── hw_types.h
│   │   ├── hw_upp.h
│   │   ├── hw_xbar.h
│   │   └── hw_xint.h
│   ├── interrupt.c
│   ├── interrupt.h
│   ├── mcbsp.c
│   ├── mcbsp.h
│   ├── memcfg.c
│   ├── memcfg.h
│   ├── pin_map.h
│   ├── sci.c
│   ├── sci.h
│   ├── sdfm.c
│   ├── sdfm.h
│   ├── spi.c
│   ├── spi.h
│   ├── sysctl.c
│   ├── sysctl.h
│   ├── upp.c
│   ├── upp.h
│   ├── version.c
│   ├── version.h
│   ├── xbar.c
│   └── xbar.h
├── flash.sh
├── include
│   ├── abi_prefix.h
│   ├── assert.h
│   ├── autoinit.h
│   ├── boot_hooks.h
│   ├── complex
│   ├── complex.h
│   ├── cpp_inline_math.h
│   ├── cpy_tbl.h
│   ├── crc_defines.h
│   ├── crc_tbl.h
│   ├── ctype.h
│   ├── cxxabi.h
│   ├── _data_synch.h
│   ├── _defs.h
│   ├── elfnames.h
│   ├── errno.h
│   ├── exception.stdh
│   ├── fenv.h
│   ├── fenv-softfloat.h
│   ├── file.h
│   ├── float.h
│   ├── _fmt_specifier.h
│   ├── inttypes.h
│   ├── IQmathLib.h
│   ├── _isfuncdcl.h
│   ├── _isfuncdef.h
│   ├── iso646.h
│   ├── limits.h
│   ├── linkage.h
│   ├── locale.h
│   ├── _lock.h
│   ├── lowlev.h
│   ├── math_blocks
│   │   ├── aci_fe_const.h
│   │   ├── aci_fe.h
│   │   ├── aci_se_const.h
│   │   ├── aci_se.h
│   │   ├── angle_math.h
│   │   ├── clarke.h
│   │   ├── com_trig.h
│   │   ├── cur_const.h
│   │   ├── cur_mod.h
│   │   ├── dmctype.h
│   │   ├── ~Docs
│   │   │   └── DMC MATH_v13.1.pdf
│   │   ├── impulse.h
│   │   ├── ipark.h
│   │   ├── mod6_cnt.h
│   │   ├── park.h
│   │   ├── pid_grando.h
│   │   ├── pid_reg3.h
│   │   ├── pi.h
│   │   ├── pi_reg4.h
│   │   ├── rampgen.h
│   │   ├── readme.txt
│   │   ├── resolver.h
│   │   ├── rmp2cntl.h
│   │   ├── rmp3cntl.h
│   │   ├── rmp_cntl.h
│   │   ├── sin_cos_table.h
│   │   ├── smopos_const.h
│   │   ├── smopos.h
│   │   ├── speed_est.h
│   │   ├── speed_fr.h
│   │   ├── speed_pr.h
│   │   ├── svgen_comm.h
│   │   ├── svgen_dpwm.h
│   │   ├── svgen.h
│   │   ├── svgen_mf.h
│   │   ├── vhzprof.h
│   │   └── volt_calc.h
│   ├── math.h
│   ├── _mutex.h
│   ├── new.stdh
│   ├── opt.h
│   ├── pprof.h
│   ├── _pthread.h
│   ├── _reg_mutex_api.h
│   ├── _reg_synch_api.h
│   ├── setjmp.h
│   ├── signal.h
│   ├── stdalign.h
│   ├── stdarg.h
│   ├── stdbool.h
│   ├── stddef.h
│   ├── _stdint40.h
│   ├── stdint.h
│   ├── stdio.h
│   ├── stdlibf.h
│   ├── stdlib.h
│   ├── stdnoreturn.h
│   ├── string.h
│   ├── strings.h
│   ├── tgmath.h
│   ├── _ti_config.h
│   ├── time.h
│   ├── _tls.h
│   ├── trgdrv.h
│   ├── typeinfo.stdh
│   ├── wchar.h
│   └── wctype.h
├── lib
│   ├── IQmath_fpu32_coff.lib
│   ├── IQmath_fpu32.lib
│   └── rts2800_fpu32.lib
├── libraries
│   ├── control
│   │   ├── ctrl
│   │   │   ├── include
│   │   │   │   ├── ctrl.h
│   │   │   │   ├── ctrl_obj.h
│   │   │   │   └── ctrl_states.h
│   │   │   └── source
│   │   │       └── ctrl.c
│   │   ├── fwc
│   │   │   ├── include
│   │   │   │   └── fwc.h
│   │   │   └── source
│   │   │       └── fwc.c
│   │   ├── mtpa
│   │   │   ├── include
│   │   │   │   └── mtpa.h
│   │   │   └── source
│   │   │       └── mtpa.c
│   │   ├── pi
│   │   │   ├── include
│   │   │   │   └── pi.h
│   │   │   └── source
│   │   │       └── pi.c
│   │   ├── pid
│   │   │   ├── include
│   │   │   │   └── pid.h
│   │   │   └── source
│   │   │       └── pid.c
│   │   ├── vsf
│   │   │   ├── include
│   │   │   │   └── vsf.h
│   │   │   └── source
│   │   │       └── vsf.c
│   │   └── vs_freq
│   │       ├── include
│   │       │   └── vs_freq.h
│   │       └── source
│   │           └── vs_freq.c
│   ├── fcl
│   │   ├── docs
│   │   │   └── fast_current_loop_library_users_guide.pdf
│   │   ├── include
│   │   │   ├── fcl_cpu_cla.h
│   │   │   └── fcl_pi.h
│   │   └── lib
│   │       ├── fcl_cpu_cla_coff.lib
│   │       ├── fcl_cpu_cla_eabi.lib
│   │       └── fcl_cpu_cla.lib
│   ├── filter
│   │   ├── filter_fo
│   │   │   ├── include
│   │   │   │   └── filter_fo.h
│   │   │   └── source
│   │   │       └── filter_fo.c
│   │   ├── filter_so
│   │   │   ├── include
│   │   │   │   └── filter_so.h
│   │   │   └── source
│   │   │       └── filter_so.c
│   │   └── offset
│   │       ├── include
│   │       │   └── offset.h
│   │       └── source
│   │           └── offset.c
│   ├── math
│   │   ├── include
│   │   │   └── math.h
│   │   └── source
│   │       ├── FPUmathTables.asm
│   │       ├── sincos.asm
│   │       └── sqrt.asm
│   ├── observers
│   │   ├── est
│   │   │   ├── include
│   │   │   │   ├── est_Flux_states.h
│   │   │   │   ├── est.h
│   │   │   │   ├── est_Ls_states.h
│   │   │   │   ├── est_Rr_states.h
│   │   │   │   ├── est_Rs_states.h
│   │   │   │   ├── est_states.h
│   │   │   │   ├── est_Traj_states.h
│   │   │   │   ├── motor.h
│   │   │   │   └── userParams.h
│   │   │   └── source
│   │   │       ├── user.c
│   │   │       └── user_dm.c
│   │   ├── fast
│   │   │   └── lib
│   │   │       └── f28004x
│   │   │           └── f28004x_fast_rom_symbols_fpu32.lib
│   │   └── slip
│   │       ├── include
│   │       │   └── slip.h
│   │       └── source
│   │           └── slip.c
│   ├── position_sensing
│   │   └── qep
│   │       └── include
│   │           └── qep_defs.h
│   ├── sfra
│   │   ├── C2000SoftwareFrequencyResponseAnalyzer_1_40_00_manifest.html
│   │   ├── docs
│   │   │   └── sfra_library_users_guide.html
│   │   ├── examples
│   │   │   ├── ccs
│   │   │   │   ├── example1_stb_f28004x_f32_coff.projectspec
│   │   │   │   ├── example1_stb_f28004x_f32_eabi.projectspec
│   │   │   │   ├── example1_stb_f28004x_f32_tmu_coff.projectspec
│   │   │   │   └── example1_stb_f28004x_f32_tmu_eabi.projectspec
│   │   │   ├── cmd
│   │   │   │   ├── f28004x_flash_lnk.cmd
│   │   │   │   └── f28004x_flash_lnk_eabi.cmd
│   │   │   ├── drivers
│   │   │   │   └── f28004x
│   │   │   │       ├── include
│   │   │   │       │   ├── device.h
│   │   │   │       │   ├── driverlib.h
│   │   │   │       │   ├── sfra_examples_hal.h
│   │   │   │       │   └── sfra_examples_settings.h
│   │   │   │       └── source
│   │   │   │           ├── device.c
│   │   │   │           └── sfra_examples_hal.c
│   │   │   └── example1_stb
│   │   │       ├── debug
│   │   │       │   └── setupdebugenv.js
│   │   │       ├── include
│   │   │       │   └── example1_stb.h
│   │   │       └── source
│   │   │           └── example1_stb.c
│   │   ├── gui
│   │   │   ├── Abt.Controls.SciChart.Wpf.dll
│   │   │   ├── CompDesigner.exe
│   │   │   ├── Comp.xml
│   │   │   ├── include
│   │   │   │   └── sfra_gui_scicomms_driverlib.h
│   │   │   ├── SFRAData.csv
│   │   │   ├── SFRA_GUI.exe
│   │   │   ├── SFRA_GUI_MC.exe
│   │   │   └── source
│   │   │       └── sfra_gui_scicomms_driverlib.c
│   │   ├── include
│   │   │   └── sfra_f32.h
│   │   ├── lib
│   │   │   ├── sfra_f32_coff.lib
│   │   │   ├── sfra_f32_eabi.lib
│   │   │   ├── sfra_f32_tmu_coff.lib
│   │   │   ├── sfra_f32_tmu_eabi.lib
│   │   │   └── sfra.lib
│   │   ├── release_notes.pdf
│   │   ├── scripts
│   │   │   ├── FRADataExtraction.m
│   │   │   ├── FRAData.xlsx
│   │   │   ├── SFRAData.csv
│   │   │   ├── STB_Data_Compare_with_model.m
│   │   │   └── STB_Run.xlsx
│   │   └── TILAW305447v1clickwrap.pdf
│   ├── transforms
│   │   ├── clarke
│   │   │   ├── include
│   │   │   │   └── clarke.h
│   │   │   └── source
│   │   │       └── clarke.c
│   │   ├── ipark
│   │   │   ├── include
│   │   │   │   └── ipark.h
│   │   │   └── source
│   │   │       └── ipark.c
│   │   ├── park
│   │   │   ├── include
│   │   │   │   └── park.h
│   │   │   └── source
│   │   │       └── park.c
│   │   └── svgen
│   │       ├── include
│   │       │   ├── svgen_current.h
│   │       │   └── svgen.h
│   │       └── source
│   │           ├── svgen.c
│   │           └── svgen_current.c
│   └── utilities
│       ├── angle_gen
│       │   ├── include
│       │   │   └── angle_gen.h
│       │   └── source
│       │       └── angle_gen.c
│       ├── cpu_time
│       │   ├── include
│       │   │   └── cpu_time.h
│       │   └── source
│       │       └── cpu_time.c
│       ├── datalog
│       │   ├── include
│       │   │   ├── datalog.h
│       │   │   └── dlog_4ch_f.h
│       │   └── source
│       │       ├── datalog.c
│       │       └── dlog_4ch_f.c
│       ├── diagnostic
│       │   ├── include
│       │   │   └── graph.h
│       │   └── source
│       │       └── graph.c
│       ├── math_blocks
│       │   └── include
│       │       ├── CLA_v1.0
│       │       │   ├── ACI_FE_CLA.h
│       │       │   ├── ACI_FE_CONST_CLA.h
│       │       │   ├── ACI_SE_CLA.h
│       │       │   ├── ACI_SE_CONST_CLA.h
│       │       │   ├── CLARKE_CLA.h
│       │       │   ├── iPARK_CLA.h
│       │       │   ├── PARK_CLA.h
│       │       │   ├── PI_CLA.h
│       │       │   ├── RAMP_CTL_CLA.h
│       │       │   ├── RAMP_GEN_CLA.h
│       │       │   ├── SMO_CONST_CLA.h
│       │       │   ├── SMOPOS_CLA.h
│       │       │   ├── SMOPOS_CONST_CLA.h
│       │       │   ├── SPEED_EST_CLA.h
│       │       │   ├── SVGEN_CLA.h
│       │       │   └── VOLT_CALC_CLA.h
│       │       └── math_blocks
│       │           ├── aci_fe_const.h
│       │           ├── aci_fe.h
│       │           ├── aci_se_const.h
│       │           ├── aci_se.h
│       │           ├── angle_math.h
│       │           ├── clarke.h
│       │           ├── com_trig.h
│       │           ├── cur_const.h
│       │           ├── cur_mod.h
│       │           ├── dmctype.h
│       │           ├── ~Docs
│       │           │   └── DMC MATH_v13.1.pdf
│       │           ├── impulse.h
│       │           ├── ipark.h
│       │           ├── mod6_cnt.h
│       │           ├── park.h
│       │           ├── pid_grando.h
│       │           ├── pid_reg3.h
│       │           ├── pi.h
│       │           ├── pi_reg4.h
│       │           ├── rampgen.h
│       │           ├── readme.txt
│       │           ├── resolver.h
│       │           ├── rmp2cntl.h
│       │           ├── rmp3cntl.h
│       │           ├── rmp_cntl.h
│       │           ├── sin_cos_table.h
│       │           ├── smopos_const.h
│       │           ├── smopos.h
│       │           ├── speed_est.h
│       │           ├── speed_fr.h
│       │           ├── speed_pr.h
│       │           ├── svgen_comm.h
│       │           ├── svgen_dpwm.h
│       │           ├── svgen.h
│       │           ├── svgen_mf.h
│       │           ├── vhzprof.h
│       │           └── volt_calc.h
│       ├── queue
│       │   ├── include
│       │   │   └── queue.h
│       │   └── source
│       │       └── queue.c
│       ├── traj
│       │   ├── include
│       │   │   └── traj.h
│       │   └── source
│       │       └── traj.c
│       └── types
│           └── include
│               └── types.h
├── ram.sh
├── README.md
├── src
│   ├── adc_.c
│   ├── adc_.h
│   ├── cbuffer.c
│   ├── cbuffer.h
│   ├── device.c
│   ├── eqep_.c
│   ├── eqep_.h
│   ├── events.c
│   ├── events.h
│   ├── everythings.c
│   ├── everythings.h
│   ├── F2837xD_CodeStartBranch.asm
│   ├── fcl_qep_f2837x_tmdxiddk.c
│   ├── leds.c
│   ├── leds.h
│   ├── main.c
│   ├── parser.c
│   ├── parser.h
│   ├── pwm.c
│   ├── pwm.h
│   ├── schedule.c
│   ├── schedule.h
│   ├── scia.c
│   ├── scia.h
│   ├── sm.c
│   ├── sm.h
│   ├── systick.c
│   ├── systick.h
│   ├── wdog.c
│   └── wdog.h
├── tags
├── targetConfigs
│   ├── readme.txt
│   └── TMS320F28379D.ccxml
├── types_c.taghl
├── user_files
│   ├── configs
│   │   └── f28379d.ccxml
│   ├── images
│   │   └── servo_pmsm.out -> ../../Debug/servo_pmsm.out
│   └── settings
│       └── generated.ufsettings
└── utils
    ├── cmdline.c
    ├── cmdline.h
    ├── makefile_ram2flash.sh
    ├── ustdlib.c
    └── ustdlib.h

202 directories, 651 files

```

<!--

## Example (Optional)

```c
// code test

void main (void) {
   return 0;
}

```
-->
---
<!--

## Installation

- All the `code` required to get started
- Images of what it should look like

### Clone

- Clone this repo to your local machine using `https://github.com/fvcproductions/SOMEREPO`

### Setup

- If you want more syntax highlighting, format your code like this:

> update and install this package first

```shell
$ brew update
$ brew install fvcproductions
```

> now install npm and bower packages

```shell
$ npm install
$ bower install
```

- For all the possible languages that support syntax highlithing on GitHub (which is basically all of them), refer <a href="https://github.com/github/linguist/blob/master/lib/linguist/languages.yml" target="_blank">here</a>.


## Features
## Usage (Optional)
## Documentation (Optional)
## Tests (Optional)

- Going into more detail on code and technologies used
- I utilized this nifty <a href="https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet" target="_blank">Markdown Cheatsheet</a> for this sample `README`.







## Contributing

> To get started...

### Step 1

- **Option 1**
    - 🍴 Fork this repo!

- **Option 2**
    - 👯 Clone this repo to your local machine using `https://github.com/joanaz/HireDot2.git`

### Step 2

- **HACK AWAY!** 🔨🔨🔨

### Step 3

- 🔃 Create a new pull request using <a href="https://github.com/joanaz/HireDot2/compare/" target="_blank">`https://github.com/joanaz/HireDot2/compare/`</a>.

-->

## Team

| <a href="https://github.com/pslavkin" target="_blank">**pslavkin**</a> | <a href="https://github.com/pslavkin" target="_blank">**neo**</a> | <a href="https://github.com/pslavkin" target="_blank">**doe**</a> |
| :---: |:---:| :---:|
| [![pslavkin](https://avatars1.githubusercontent.com/u/8507601?s=150)](https://github.com/pslavkin)    | [<img src=https://media.metrolatam.com/2019/04/04/matrixreloadedneo01-3ec18ba895c91e664865ece4b3c9381d-600x400.jpg width="200" height="150">](https://github.com/pslavkin) | [<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStNOGY8Cj2fH3B6L3OD91VJiuIq3iBA3FkCz0w0OJSQGuIxrsF" width="200" height="150">](https://github.com/pslavkin)  |
| <a href="https://github.com/pslavkin" target="_blank">`github.com/pslavkin`</a> | <a href="https://github.com/pslavkin" target="_blank">`github.com/pslavkin`</a> | <a href="https://github.com/pslavkin" target="_blank">`github.com/pslavkin`</a> |

<!--

## FAQ

- **How do I do *specifically* so and so?**
    - No problem! Just do this.


-->

## Support

Reach out to me at one of the following places!
- <a href="http://www.ti.com/tool/launchXL-F28379d#" target="_blank">**launchXL-F28379d** <img src="doc/pics/launchpad.jpeg"    title="launchpad"   width="100" height="100" alt="launchpad"></a>

## License

[![License](http://img.shields.io/:license-mit-blue.svg?style=flat-square)](http://badges.mit-license.org)

- **[MIT license](http://opensource.org/licenses/mit-license.php)**
- Copyright 2019 © <a href="http://fvcproductions.com" target="_blank">FVCproductions</a>.
