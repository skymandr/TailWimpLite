# TailWimp Lite

## What is it and what is it not?
_TailWimp Lite_ is a simple utility for rearranging _Risc OS Wimp_ windows
using keyboard short cuts, inspired by tiling window managers [0] such as
_i3_ [1] and _Sway_ [2]. It supports moving and reshaping windows to cover
halves of the screen (horizontally or vertically), as well as the four corner
quadrants, minus optional paddings to allow for access to the icon bar,
iconised windows etc.

As signified by the _Lite_ in the name, _TailWimp Lite_ is _not_ a fully
fledged tiling window manager, nor an approximation of one. It doesn't keep
any state of what windows are managed and acts only on the current (topmost)
window.


## Usage
`Ctrl+Shift+Arrow Key` moves the current window in the direction specified,
anchoring it to the margin in the direction of movement. `Ctrl+Shift+Logo`
will maximize the current window, respecting padding, and `Ctrl+Shift+Home`
will centre it without manipulating its size. The current window is defined
as the topmost window over all.

The window will be maximized in the perpendicular dirction to the movement,
unless it is already anchored to one of those margins. This means that two
moves, one vertical and one horizontal in any order, will get the window into
a corner quadrant. The exception is if a window in a corner is moved in one of
the directions where it is already anchored. It will then be maximized in the
perpendicular direction, _i.e_ a window in the bottom left corner moved left
will be maximized vertically.

If padding is specified, space on the desktop will be reserved around the
windows to allow access to the icon bar, iconized windows and the like. By
default, only bottom padding is non-zero, in order to show the icon bar.


## Choices
Paddings for left, right, top and bottom margins in os screen units (usually
2 per 1 px). By default only bottom padding is non-zero, in order to show the
icon bar.


## System requirements and compatibility
This software has been tested on Risc OS Open 5.X [3] on Raspberry Pi and in
the RPCEmu emulator [4]. It might work on earlier versions of Risc OS as
well. If you try it, please let me know!


## Getting more help, making suggestions and reporting problems
The preferred way of communicating a suggestion or a problem is to submit an
issue in the GitHub project [5]. If you have questions, you can also try
asking in the Risc OS Open forum [6] if you think the question is of general
interest, or contact me directly on for example _!ChatCube_ [7], _Telegram_
[8], _matrix_ [9], or by email me @fripost.org. I use the handle `skymandr`
for all of these.


## Why _TailWimp_?
It's a polyglottal pun. Bumbarrels are best birds.


## Why _Lite_
Shortened from _light_ due to space restrictions. This refers to the fact that
this is not a full tiling window manager, just a tool for moving windows
about. If some day I can get this to work in a satisfactory manner, I may
give making a more comprehensive window management tool a go, in which case
that will be called just _TailWimp_.


## License and disclaimer
TailWimp Lite - utility for rearranging Wimp windows using keyboard

Copyright (C) 2021  Andreas Skyman (Bumbarrel Computing)

Many features in this program are highly derivative of Steve Fryatt's
examples from http://www.stevefryatt.org.uk/risc-os/wimp-prog which have been
relicensed from European Union Public License v1.2 for the purpose of this
program.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>


---
[0]: https://en.wikipedia.org/wiki/Tiling_window_manager

[1]: https://i3wm.org

[2]: https://swaywm.org

[3]: https://www.riscosopen.org

[4]: http://www.marutan.net/rpcemu

[5]: https://github.com/skymandr/TailWimpLite

[6]: https://www.riscosopen.org/forum

[7]: http://chatcube.org

[8]: https://telegram.org/

[9]: https://matrix.org 
