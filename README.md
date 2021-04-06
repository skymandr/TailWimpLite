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
The available movements are:

- `ModKey+Arrow Key` – moves the current window in the direction specified,
anchoring it to the margin in the direction of movement. 
- `ModKey+Space` – moves the current window to the centre of the screen,
  without manipulating its size, not respecting padding.
- `ModKey+Return` maximizes the current window, while respecting padding.

The current window is defined as the topmost window over all, and `ModKey`
defined as is either `Logo` or `Alt`. The default is `Logo`, but note that
`Logo` key presses are not forwarded properly to Risc OS under RPCEmu [3],
since they are captured by the host OS. Therefore `Alt` works better in this
setting, but using this may not be ideal, since Risc OS uses `Alt` for a lot
of things. The `ModKey` is configurable, see _Choices_ below.

The moved window will be maximized (or centred, if it cannot cover the whole
extent) in the perpendicular dirction to the movement, unless it is already
anchored to one of those margins. This means that two moves, one vertical and
one horizontal in any order, will get the window into a corner quadrant. The
exception is if a window in a corner is moved in one of the directions where
it is already anchored. It will then be maximized/centred in the
perpendicular direction, _i.e_ a window in the bottom left corner moved left
will be maximized vertically. This gives a total of 8 positions reachable
with the arrow keys, and an additional two configurations using the centre
and maximize movements.

If padding is specified, space on the desktop will be reserved around the
windows to allow access to the icon bar, iconized windows and the like. By
default, only bottom padding is non-zero, in order to show the icon bar. See
_Choices_ below for information on how to configure padding.


## Choices
Choices can be set by selecting _Choices..._ from the icon bar menu. Thir
allows you to set paddings for left, right, top and bottom margins in OS
screen units (usually 2 per 1 px). By default only bottom padding is
non-zero, in order to show the icon bar. You can also select whether you want
`Logo` or `Alt` as `ModKey`. The default is `Logo` – see _Usage_ above for
some considerations on which to choose.


## Help
Help, release notes and license are available in the icon bar menu.


## Updates
You can find the latest released version under _Releases_ on the GitHub
project [3], where you can also find the source, in case you want to modify
it or build it your self. Be advised that the source may contain untested
features! The GitHub project page can be opened by clicking the _Bumbarrel_
icon in the Program information window, available from the icon bar menu
under _Info_.


## System requirements and compatibility
This software has been tested on Risc OS Open 5.X [4] on Raspberry Pi and in
the RPCEmu emulator [3]. It might work on earlier versions of Risc OS as
well. If you try it, please let me know! Also, please see _Usage_ above for
some notes on using _Tail Wimp Lite_ under RPCEmu.


## Getting more help, making suggestions and reporting problems
The preferred way of communicating a suggestion or a problem is to submit an
issue in the GitHub project [5]. If you have questions, you can also try
asking in the Risc OS Open forum [6] if you think the question is of general
interest, or you can contact me directly on for example _!ChatCube_ [7],
_Telegram_ [8], or _matrix_ [9], or by emailing me _@fripost.org_. I use the
handle `skymandr` for all of these.


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

[3]: http://www.marutan.net/rpcemu

[4]: https://www.riscosopen.org

[5]: https://github.com/skymandr/TailWimpLite

[6]: https://www.riscosopen.org/forum

[7]: http://chatcube.org

[8]: https://telegram.org/

[9]: https://matrix.org 
