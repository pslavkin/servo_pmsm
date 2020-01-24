# PMSM Servo motor driver based on C2000 - PCB

> development of a customized high precision microcontrolled permament magnet embedded servo motor

<img src = "doc/pics/TMDXIDDK379D.jpeg" width = "400" height = "200"/> <img src = "doc/pics/controlcard.jpeg"  width = "200" height = "150"/> <img src = "doc/pics/launchpad.jpeg"    width = "200" height = "150"/> 
## Progress
<!--- 
- ![rojo](https://placehold.it/15/FF0000/000000?text=+)
- ![amarillo](https://placehold.it/15/FFFF00/000000?text=+)
- ![azul](https://placehold.it/15/0000FF/000000?text=+)
- ![verde](https://placehold.it/15/00FF00/000000?text=+)
embedded gist
<img src="doc/pics/servo-15.jpg" width="800"/>
https://gist.github.com/rxaviers/7360908

- :heavy_check_mark: connected to a chinise CNC works!
- :red_circle:       Dual core interconnect IPC
-->
- :heavy_check_mark:    controller schematics from Altium to kicad
- :heavy_check_mark:    setting kicad libs, datasheet, remove unused IC's
- :heavy_check_mark:    mixing high power cirtuit to kicad
- :heavy_check_mark:    two servo motor control on same board aproach!
- :heavy_check_mark:    setting kicad libs, datasheet, remove unused IC's 
- :heavy_check_mark:    adc
- :heavy_check_mark:    igbt interface
- :heavy_check_mark:    lem measurement
- :heavy_check_mark:    ac input
- :heavy_check_mark:    connect interfaces to GPIO's (ecat0/1, enet, leds, etc)
- :heavy_check_mark:    shunt using isolated ADC fron/backend
- :heavy_check_mark:    isolated GPI for external switches and sensor on any polarity
- :heavy_check_mark:    8 channel buffer to drive IGBT
- :heavy_check_mark:    ac/dc -> dc/dc -> ldo for clean power supplies
- :heavy_check_mark:        Line voltage measurement
- :heavy_check_mark:        overcurrent protection using CMPSS
- :red_circle:          aborted! lem is better changing/adding shunt measurement with sigma deltas isolated ADC
- :heavy_check_mark:    LEM revival. I've decided to return to the idea of LEM 'cose sigma
  delta carry more complexity and less benefits. But SD could be included on power stage and
I'll let pins to aquire and filter it.
- :heavy_check_mark:     schematics ready!, and check rules passed. go to part numbering and
  footprint selection
- :red_circle:          isolated GPIO aborted! I've reise free pins that comes from IGBT
- :heavy_check_mark:    EVE LCD driven choosen as the UI by spi.. I's all the thinks we need
- :heavy_check_mark:    3d added EVE LCD 3. 20w offline ac/dc changed to 10w. 15vcold
  eliminated, two buttons eliminated. 2 LEM's eliminated
- :construction:        all footprints choosen, but deserves some comprobation
- :heavy_check_mark:    placement rought done
- :construction:        ronting..
- :construction:        moving ethernet connector to right and remove 15vh->5vh and debuh
  driver
 

---
## Welcome back Moldova 3.0

<img src = "doc/pics/moldova3.0.jpg" width = "400"/>
I've come back to finish PCB, there we are... sdarobia!


## Table of Contents


- [schematics](#schematics)
- [Contributing](#contributing)
- [Team](#team)
- [FAQ](#faq)
- [Support](#support)
- [Hierarchy](#hierarchy)
- [License](#license)
---
## schematics
There are the actual schematics generated until now:

<img src="doc/pics/servo-0.jpg" width="800"/>
<img src="doc/pics/servo-1.jpg" width="800"/>
<img src="doc/pics/servo-2.jpg" width="800"/>
<img src="doc/pics/servo-3.jpg" width="800"/>
<img src="doc/pics/servo-4.jpg" width="800"/>
<img src="doc/pics/servo-5.jpg" width="800"/>
<img src="doc/pics/servo-6.jpg" width="800"/>
<img src="doc/pics/servo-7.jpg" width="800"/>
<img src="doc/pics/servo-8.jpg" width="800"/>
<img src="doc/pics/servo-9.jpg" width="800"/>
<img src="doc/pics/servo-10.jpg" width="800"/>
<img src="doc/pics/servo-11.jpg" width="800"/>
<img src="doc/pics/servo-12.jpg" width="800"/>
<img src="doc/pics/servo-13.jpg" width="800"/>
<img src="doc/pics/servo-14.jpg" width="800"/>
<img src="doc/pics/servo-15.jpg" width="800"/>
<img src="doc/pics/servo-16.jpg" width="800"/>
<img src="doc/pics/servo-17.jpg" width="800"/>
<img src="doc/pics/servo-18.jpg" width="800"/>

## Layout
Let's begin with layout!
first pic, easy, doesn't it?

<img src="doc/pics/layout1.jpg"      width="400"/>
<img src="doc/pics/layout2.jpg"      width="400"/>
<img src="doc/pics/layout3.jpg"      width="400"/>
<img src="doc/pics/layout3_back.jpg" width="400"/>
<img src="doc/pics/layout4.jpg"      width="400"/>
<img src="doc/pics/layout4_back.jpg" width="400"/>

<img src="doc/pics/ratsnets1.jpg" width="400"/>
<img src="doc/pics/ratsnets2.jpg" width="400"/>
<img src="doc/pics/ratsnets3.jpg" width="400"/>
<img src="doc/pics/ratsnets4.jpg" width="400"/>
<img src="doc/pics/ratsnets5.jpg" width="400"/>
<img src="doc/pics/ratsnets6.jpg" width="400"/>


## Hierarchy

<!-- tree --ignore-case -L 3 -I "*utils*|*user*|*target*|*Debug*|Release|include|driverlib|tags|*types_c*" -->

```ruby


```

<!--


## Features
## Usage (Optional)
## Documentation (Optional)
## Tests (Optional)

- Going into more detail on code and technologies used
- I utilized this nifty <a href="https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet" target="_blank">Markdown Cheatsheet</a> for this sample `README`.



## Contributing

## Team

| <a href="https://github.com/pslavkin" target="_blank">**pslavkin**</a> | <a href="https://github.com/pslavkin" target="_blank">**neo**</a> | <a href="https://github.com/pslavkin" target="_blank">**doe**</a> |
| :---: |:---:| :---:|
| [![pslavkin](https://avatars1.githubusercontent.com/u/8507601?s=150)](https://github.com/pslavkin)    | [<img src=https://media.metrolatam.com/2019/04/04/matrixreloadedneo01-3ec18ba895c91e664865ece4b3c9381d-600x400.jpg width="200" height="150">](https://github.com/pslavkin) | [<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStNOGY8Cj2fH3B6L3OD91VJiuIq3iBA3FkCz0w0OJSQGuIxrsF" width="200" height="150">](https://github.com/pslavkin)  |
| <a href="https://github.com/pslavkin" target="_blank">`github.com/pslavkin`</a> | <a href="https://github.com/pslavkin" target="_blank">`github.com/pslavkin`</a> | <a href="https://github.com/pslavkin" target="_blank">`github.com/pslavkin`</a> |


## Support

Reach out to me at one of the following places!
- <a href="http://www.ti.com/tool/launchXL-F28379d#" target="_blank">**launchXL-F28379d** <img src="doc/pics/launchpad.jpeg"    title="launchpad"   width="100" height="100" alt="launchpad"></a>

## License

[![License](http://img.shields.io/:license-mit-blue.svg?style=flat-square)](http://badges.mit-license.org)

- **[MIT license](http://opensource.org/licenses/mit-license.php)**
- Copyright 2019 © <a href="http://fvcproductions.com" target="_blank">FVCproductions</a>.
