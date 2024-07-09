# Getting around in Nvim

## Basic movement

'h','j','k','l' let you navigate left, up, down, right

if things are scary you can always :q!  ;)

## Motions

| Key              | Description                                                                 |
| ---------------- | --------------------------------------------------------------------------- |
| `w`              | to the start of the next word excluding the first character                 |
| `e`              | to the end of the current word, including the last character                |
| `$`              | till the end of the line                                                    |
| `number`         | use a number count for the motion. 2w moves the cursor 2 words forward      |

## Navigation

| Key              | Description                                                                 |
| ---------------- | --------------------------------------------------------------------------- |
| `0`              | moves to the start of a line                                                |
| `G / gg`         | moves you to the bottom or top of a file                                    |
| `[num] G`        | jumps you to a line number, for instance 50G takes you to line 50           |
| `/phrase`        | opens a search for "phrase" in this case, n for next, N for previous        |
| `?phrase`        | same as /phrase but searches in the backward direction                      |
| `<C-o>`          | go back to where you came from after a search `<C-i>` goes forward          |
| `%`              | find matching parenthesis `)`, `]`, or `}`                                  |
| `f` and `F`      | find the next or previous of something. f" goes to next " F" goes to prev " |
| `w` or `b`       | navigate right / left by word can chain with numbers. ie 2w                 |
| `<C-d>` `<C-u>`  | navigate half pages up and down                                             | 

## Deletion

| Key              | Description                                                                 |
| ---------------- | --------------------------------------------------------------------------- |
| `x`              | delete a character                                                          |
| `d`              | delete something (followed by amount, ie: dw deletes a word)                |
| `d2w`            | delete - 2 - words                                                          |

## Insertion

| Key              | Description                                                                 |
| ---------------- | --------------------------------------------------------------------------- |
| `i`              | insert text at the cursor position                                          |
| `a`              | insert text after the cursor                                                |
| `p` or `P`       | put, use it to paste things after the cursor or P for before                |
| `o` or `O`       | opens/creates a line below/above the cursor and puts you in insert mode     |
| `y`              | copies (yanks) text, can highlight with v mode and motions. yw yanks 1 word |

## Replacement

| Key              | Description                                                                 |
| ---------------- | --------------------------------------------------------------------------- |
| `r`              | replaces a character at the cursor rx will replace it with x                |
| `R`              | replace more than one character. Kind of like insert mode on MS Word        |
| `ce`             | Changes to end of the word. Deletes word and puts you in insert mode        |
| `c # motion`     | c$ replace to end of line, or c3w for change 3 words etc                    |
| `:s/thee/the/`   | substitute command matches only the first 'thee' and replaces with 'the'    |
| `:s/hu/hi/g`     | substitute command, change every occurance on the line by adding /g         |
| `:1,4s/old/new/g`| substitute every occurance between two line numbers, inclusive (1-4)        |
| `:%s/old/new/g`  | change every occurance in the whole file                                    |
| `:%s/old/new/gc` | to find every occurance and prompt for substitution                         |
|                  |                                                                             |

## Modes

| Key              | Description                                                                 |
| ---------------- | --------------------------------------------------------------------------- |
| `i`              | insert mode                                                                 |
| `esc`            | normal mode                                                                 |
| `v`              | visual selection                                                            |

## Misc

| Key              | Description                                                                 |
| ---------------- | --------------------------------------------------------------------------- |
| `u`              | undo the last commands                                                      |
| `U`              | fix the whole line. Return it to it's original state                        |
| `<C-r>`          | redo commands                                                               |
| `:!`             | execute external commands. :!ls for instance                                |
| `:r !ls`         | read in the contents of an external command                                 |

## Misc Controls that don't fit neatly in a keymap

- If you highlight text in visual mode (v) and then press :, you will be given a prompt to save between those lines. It will show you something like :'<,'>. You can then add w and a filename to save it
- You can also retrieve the contents of a file with :r FILENAME and paste it in, you can also read the output of an external command
- you can set options on search and substitute commands to ignore case.
  - 'ic' 'ignorecase'     ignore upper/lower case when searching
  - 'is' 'incsearch'      show partial matches for a search phrase
  - 'hls' 'hlsearch'      highlight all matching phrases
  - prepend "no" to these to turn them off or "inv" to invert them
  - ex. :set noic or :set invic
- You can type :help to get help
- use `<C-w><C-w>` to jump between windows
- use `<C-d>` while in command mode to see possible completions and press `<Tab>` to use one of them
- You can fold / unfold (hide functions for instance) with zf + motion to fold and zo + motion to unfold
- You can resize a panel with `<C-w> +` and `<C-w> -` combine with motions: `10 <C-w> +` makes the window 10 lines taller
- Similarly, `<C-w> >` and `<C-w> <` are used for changing the width

<!--
Use this for making additional columns
|                  |                                                                             |
-->

