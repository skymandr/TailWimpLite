# TailWimp Lite v0.3.0
## Windows redraw properly (2021-01-18)

This release replaces bare `wimp_open()` calls with proper
`wimp_OPEN_WINDOW_REQUEST` messages, using `wimp_send_message_to_window()`
(issue #12). This means that `!Edit` and `!StrongEd` now redraw properly
(issue #6). Since this is a fairly major bug-fix, I'm bumping the minor
version.

In addition, this versions makes it so that windows that are entirely off
screen cannot be moved, which makes sure that you won't move `GrabKeys` onto
the desktop by mistake (issue #10).

Future developments remain the same: more interesting and configurable hot
keys (issues #2 and #3). Additionally, I would like to have a look at moving
to using the GCCSDK, so that I can build on GNU/Linux (issue #18), with the
intent of perhaps getting the application into `!PackMan` and/or `!Store`
(issues #19 and #20).

Once more, my thanks to the users on the ROOL forums [1] for helpful
suggestions, and in particular to Julie Stamp for pointing out how to solve
the redrawing issue!

---
[1]: https://www.riscosopen.org/forum


----------------------
# TailWimp Lite v0.2.0
## Choices and further movement fixes (2021-01-13)

Choices now work (issue #1) and the movements work as intended, though the
fix for undecorated windows is a bit hacky (issue #11). In addition,
functions for moving windows to centre and to maximize have been implemented
and documented (issue #14), and windows moved to top or bottom will be
centred if they cannot cover the whole width (issue #15). Finally, Release
Notes and License have been added and can be opened in the menu (issue #16),
which has been tidied up a bit (issue #17), and iconized windows now have the
correct icon (issue #13).

The main issue that remains is the redrawing bug (issue #6). This is actually
probably several bugs, but I'm hoping there may be a fix for all of them. It
affects `!Edit` and `!StrongEd`, for instance, in slightly different ways:
`!Edit` is simply not redrawing the work area, and `!StrongEd` is losing
track of some of its _Panes_ (?). The method proposed in issue #12 might be a
part of solving this, or maybe `wimp_force_redraw` or `wimp_update_window` or
similar is needed. After that, other and configurable movement keys is on the
agenda (issues #2 and #3). Since the next few issues are bigger ones,
however, I predict that development will go into a hiatus before I take them
on.

Many thanks to the users on the ROOL forums [1] for help with ironing out some
details for this release!

---
[1]: https://www.riscosopen.org/forum


----------------------
# TailWimp Lite v0.1.1
## Fix validation and movements (2021-01-11)

This release fixes the window movement crash (issue #5), removes the Choices
sub menu (issue #7 ) and fixes the input validation (issue #8).

The fix of #5 revealed an issue affecting the same windows, where they cannot
be correctly identified as is_right, and there may also be an issue with
`is_top`/`to_top` (issue #11), but I thought this fix was important enough
for a point release. An avenue to explore for solving this, and maybe #6 as
well, is to use wimp_send_message instead of `wimp_open_window` to move the
windows (issue #12).

Next release will probably be when Choices have been implemented.

Many thanks to Julie Stamp on the ROOL Forums [1] for pointing out how to
solve the issues above!

---
[1]: https://www.riscosopen.org/forum


----------------------
# TailWimp Lite v0.1.0
## Initial beta release (2021-01-10)

First release of TailWimp Lite (`!TailWmpLt`)!

Rudimentary window movements work, however there are several known issues:

- Choices don't work for two reasons:
1. The Choices window cannot be opened in the usual way because it crashes on
   the initial movement (issue #5 and #7)

2. The Choices window interaction crashes the application when trying to
   update icons, and has therefore not been finished (issue #1)

Additionally input validation seems to be non-functional (issue #8)

- Movements of some windows aside from choices crashes the application
  (issue #5)

- Some windows don't update properly after moving (issue #6)

- The `GrabKeys` window can be moved onto the screen, as well as the main
application window, with some effort (issue #10)

Many thanks to @steve-fryatt for the excellent introduction he's written to
wimp programming [0]. I hope I have given appropriate credit in the code.

---
[0]: http://www.stevefryatt.org.uk/risc-os/wimp-prog
