# TailWimp Lite v1.0.1
## Clean-up build and code (2021-02-05)

This release doesn't implement any new features, merely cleans up the build
and tidies the code. Pleas refer to release notes for `v1.0.0` for details on
newest features and fixes!

---

----------------------
# TailWimp Lite v1.0.0
## Configurable modkey (2021-01-29)

Modkey is now configurable (issue #3), which – along with the improvements
in controls from `v0.4.2` – means that I consider this software mature enough
to warrant a major release: say hi to `!TailWmpLt v1.0.0`!

That aside, this release mostly contains some tidying up, updates to the
Help/ReadMe, but also the official unveiling of a link to the GitHub project,
accessible from the Program information window (issue #24).

With this, I think I will take a break, but I've said that before. Next steps
are to look into distribution (issues #18–#20) and to investigate the
irregularities affecting certain windows (issues #21–#23).

Thanks to the users on the ROOL forums [1] for help, suggestions, and for
keeping the ROOL wiki up to date!

---
[1]: https://www.riscosopen.org/forum


----------------------
# TailWimp Lite v0.4.2
## Further improvements to movement keys (2021-01-27)

This release retires `Ctrl+Shift` as modkey, and instead introduces `Alt`
as an alternative to `Logo`. At the moment both work in parallel, but the
idea is that it should be configurable (issue #3). This release also removes
the quirk that you had to be careful of the order in which the keys are
pressed in order to manage focused windows – focused windows are now as
manageable as any others.

Since this breaks previous interaction patterns, this it should probably be a
minor release rather than a patch release, but I wanted to use `v0.4.2`, and
I anticipate I will make another release soon, anyway.

Once choices are implemented, I will probably bump the version to `v1.0.0`,
since then the program will feel more or less complete. Then taking care of
distribution options will be the priority (issues #18–#20), as well as having
a look at some of the known anarchic windows that have been reported
(issues #21–#23) – I suspect that at least some of them may be possible to
get to behave.

Once more, thanks to the users on the ROOL forums [1] for help and
suggestions!

---
[1]: https://www.riscosopen.org/forum


----------------------
# TailWimp Lite v0.4.0
## Improved movements and movement keys (2021-01-27)

This release introduces a new modkey: `Logo`. At the moment, this is not
configurable (see issue #3), but works in parallel to `Ctrl+Shift`. The new
modkey has three benefits over the old:

1. It doesn't clash as badly with already defined key combinations
2. It can be used to move windows with input focus (but see below)
3. It allows the "move to centre" command with `Logo+Space`

There are two quirks:
1. To move a window with input focus you may have to press the desired
   movement _first_, then `Logo`.
2. The "maximize" movement is different for the two modkeys:
   `Ctrl+Shift+Logo` or `Logo+Return`. This is due to limitations in `OSLib`.

Since this changes the interaction pattern, and since being able to move
focused windows is an important feature, I'm bumping the minor version.

The next logical step is to make the modkey configurable (issue #3). I think
that this will require implementing support for _DeepKeys_ [2], unless I want
to make a complete reimagining of the control logic (issue #25). Not sure
which route is best. _DeepKeys_ seems very convenient, but I am reluctant to
foist the inconvenience of installing a third-party dependency to run the
program, especially a proprietary one, upon the user. It might also be more
fun to do it myself, but on the other hand it might be very frustrating. I
guess I'll find out. Regardless, if I go with _DeepKeys_ I will most likely
keep the current control logic as a fallback, if _DeepKeys_ is not detected.

I have decided not to prioritise the known bugs (issues #21–#23) at the
moment, so after the above is done, I'll probably have another look at GCCSDK
and distribution options (issues #18–#20).

As always, thanks to the users on the ROOL forums [1] for suggestions!

---
[1]: https://www.riscosopen.org/forum
[2]: https://sites.google.com/view/nemo20000/deepkeys


----------------------
# TailWimp Lite v0.3.0
## Windows redraw properly (2021-01-18)

This release replaces bare `wimp_open()` calls with proper
`wimp_OPEN_WINDOW_REQUEST` messages, using `wimp_send_message_to_window()`
(issue #12). This means that `!Edit` and `!StrongEd` now redraw properly
(issue #6). Since this is a fairly major bug-fix, I'm bumping the minor
version.

In addition, this version makes it so that windows that are entirely off
screen cannot be moved, which makes sure that you won't move `GrabKeys` onto
the desktop by mistake (issue #10).

Future development targets remain the same: more interesting and configurable
hot keys (issues #2 and #3). Additionally, I would like to have a look at
moving to using the GCCSDK, so that I can build on GNU/Linux (issue #18),
with the intent of perhaps getting the application into `!PackMan` and/or
`!Store` (issues #19 and #20).

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
