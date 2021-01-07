# TailWimp Lite

## What is it and what is it not?
_TailWimp Lite_ is a simple utility for rearranging _Risc OS Wimp_ windows
using keyboard short cuts, inspired by tiling window managers [0] such as
_i3_ and _Sway_ [1]. It supports moving and reshaping windows to cover halves
of the screen (horizontally or vertically), as well as the four corner
quadrants, minus optional paddings, to allow for access to the icon bar,
iconised windows etc.

As signified by the _Lite_ in the name, _TailWimp Lite_ is _not_ a fully
fledged tiling window manager, nor an approximation of one. It doesn't keep
any state of what windows are managed and acts only on the selected window.


## Usage
`Ctrl+Shift+Arrow Key` moves the current window in the direction
specified, where current window is defined as either the topmost window with
input focus, or the topmost window over all if there is no window with focus.
Two moves – one vertical and one horizontal in any order – are needed to get
the window into a corner quadrant. This will also move the window to the top
of the window pile, unless this has choice has been deactivated. If padding
is specified, space on the desktop will be reserved around the windows, to
allow access to the icon bar, iconized windows and the like. By default, only
bottom padding is non-zero, in order to show the icon bar.


## Choices
Paddings for left, right, top and bottom margins in os screen units (usually
2 per 1 px). By default only bottom padding is non-zero, in order to show the
icon bar.

There is also the option of whether to send the moved window to the top of
the window pile when moving it. This defaults to `TRUE`.


## System requirements and compatibility
This software has been tested on Risc OS Open 5.X [2] on Raspberry Pi and in
the RPCEmu emulator [3]. It might work on earlier versions of Risc OS as
well. If you try it, pleas let me know!


## Getting more help, making suggestions and reporting problems
The preferred way of communicating a suggestion or a problem is to submit an
issue in the GitHub project [4]. If you have questions, you can also try
asking in the Risc OS Open forum [5] if you think the question is of general
interest, or contact me directly on for example _!ChatCube_, _Telegram_,
_matrix_, or by email [6].


## Why TailWimp?
It is a polyglottal pun. Bumbarrels are best birds.


## License and disclaimer
TailWimp Lite - utility for rearranging wimp windows using keyboard
Copyright (C) 2021  Andreas Skyman (Bumbarrel Computing)

Many features in this program are highly derivative of Steve Fryatt's
examples from http://www.stevefryatt.org.uk/risc-os/wimp-prog

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


## References:
[0]: https://en.wikipedia.org/wiki/Tiling_window_manager

[1]: https://i3wm.org and https://swaywm.org respectively

[2]: https://www.riscosopen.org

[3]: http://www.marutan.net/rpcemu

[4]: https://github.com/skymandr/TailWimpLite

[5]: https://www.riscosopen.org/forum

[6]: http://chatcube.org, https://telegram.org/ https://matrix.org and
     @fripost.org respectively. I use the handle `skymandr` on all of these.
