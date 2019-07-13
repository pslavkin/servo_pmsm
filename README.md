# PMSM Servo motor driver based on C2000

> development of a customized high precision microcontrolled permament magnet embedded servo motor

<a href="https://github.com/pslavkin/servo_pmsm"><img src="doc/pics/TMDXIDDK379D.jpeg" title="servo pmsm" width="400" height="200" alt="TMDXIDDK379D"></a>
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
- :heavy_check_mark: ooperative RTOS
- :heavy_check_mark: SCI based command console
- :construction:     PWM one channel for testing registers
- :construction:     QEP encoder test as a frequenci measurement
- :construction:     DU cuadrature decoder
- :red_circle:       PWM 3 phase
- :red_circle:       Shunt current close loop
---
## Project Hierarchy

```ruby
.
├── 2837xD_FLASH_lnk_cpu1.cmd
├── 2837xD_RAM_lnk_cpu1.cmd
├── Debug
├── doc
│   ├── pics
│   │   └── TMDXIDDK379D.jpeg
│   └── videos
│       ├── info.txt
│       └── sci.gif
├── driverlib
│   ├── inc
├── flash.sh
├── include
│   ├── opt.h
├── lib
│   └── rts2800_fpu32.lib
├── ram.sh
├── README.md
├── Release
├── src
│   ├── adc_.c          //function related to adc module
│   ├── adc_.h
│   ├── cbuffer.c
│   ├── cbuffer.h
│   ├── device.c
│   ├── eqep.c
│   ├── eqep.h
│   ├── events.c
│   ├── events.h
│   ├── everythings.c
│   ├── everythings.h
│   ├── F2837xD_CodeStartBranch.asm
│   ├── leds.c
│   ├── leds.h
│   ├── main.c
│   ├── parser.c
│   ├── parser.h
│   ├── pwm.c
│   ├── pwm.h
│   ├── scia.c
│   ├── scia.h
│   ├── sm.c
│   ├── sm.h
│   ├── systick.c
│   ├── systick.h
│   ├── wdog.c
│   └── wdog.h
├── targetConfigs
│   ├── readme.txt
│   └── TMS320F28379D.ccxml
├── types_c.taghl
├── user_files
│   ├── configs
│   │   └── f28379d.ccxml
│   ├── images
│   │   └── servo_pmsm.out -> ../../Release/servo_pmsm.out
│   └── settings
│       └── generated.ufsettings
└── utils
    ├── cmdline.c
    ├── cmdline.h
    ├── makefile_ram2flash.sh
    ├── ustdlib.c
    └── ustdlib.h
```
---
## Table of Contents

> If you're `README` has a lot of info, section headers might be nice.

- [Installation](#installation)
- [Features](#features)
- [Contributing](#contributing)
- [Team](#team)
- [FAQ](#faq)
- [Support](#support)
- [License](#license)
---
## SCI gif demo
<img src="doc/videos/sci.gif" width="600" height="300"/>

## PWM complementary demo
<img src="doc/videos/pwm.gif" width="600" height="300"/>

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

| <a href="https://github.com/pslavkin" target="_blank">**pslavkin**</a> | <a href="https://github.com/pslavkin" target="_blank">**jhon**</a> | <a href="https://github.com/pslavkin" target="_blank">**doe**</a> |
| :---: |:---:| :---:|
| [![pslavkin](https://avatars1.githubusercontent.com/u/8507601?s=150)](https://github.com/pslavkin)    | [<img src=https://media.metrolatam.com/2019/04/04/matrixreloadedneo01-3ec18ba895c91e664865ece4b3c9381d-600x400.jpg width="200" height="150">](https://github.com/pslavkin) | [<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStNOGY8Cj2fH3B6L3OD91VJiuIq3iBA3FkCz0w0OJSQGuIxrsF" width="200" height="150">](https://github.com/pslavkin)  |
| <a href="https://github.com/pslavkin" target="_blank">`github.com/pslavkin`</a> | <a href="https://github.com/pslavkin" target="_blank">`github.com/pslavkin`</a> | <a href="https://github.com/pslavkin" target="_blank">`github.com/pslavkin`</a> |

<!--

## FAQ

- **How do I do *specifically* so and so?**
    - No problem! Just do this.



## Support

Reach out to me at one of the following places!

- Website at <a href="http://fvcproductions.com" target="_blank">`fvcproductions.com`</a>
- Twitter at <a href="http://twitter.com/fvcproductions" target="_blank">`@fvcproductions`</a>
- Insert more social links here.


-->

## License

[![License](http://img.shields.io/:license-mit-blue.svg?style=flat-square)](http://badges.mit-license.org)

- **[MIT license](http://opensource.org/licenses/mit-license.php)**
- Copyright 2019 © <a href="http://fvcproductions.com" target="_blank">FVCproductions</a>.
