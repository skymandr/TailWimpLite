# TailWimp Lite v0.1.1
# Fix validation and movements (2021-01-11)

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


======================

# TailWimp Lite v0.1.0
## Initial beta release (2021-01-10)

First release of TailWimp Lite (`!TailWmpLt`)!

Rudimentary window movements work, however there are several known issues:

- Choices don't work for two reasons:
1. The Choices window cannot be opened in the usual way because it crashes on the initial movement (issue #5 and #7)
2. The Choices window interaction crashes the application when trying to update icons, and has therefore not been finished (issue #1)

Additionally input validation seems to be non-functional (issue #8)

- Movements of some windows aside from choices crashes the application (issue #5)

- Some windows don't update properly after moving (issue #6)

- The `GrabKeys` window can be moved onto the screen, as well as the main application window, with some effort (issue #10)

Many thanks to @steve-fryatt for the excellent introduction he's written to wimp programming [0]. I hope I have given appropriate credit in the code.

---
[0]: http://www.stevefryatt.org.uk/risc-os/wimp-prog