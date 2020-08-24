# Lecture 3 - Editors (Vim)

Vim has different operating modes.
Vim starts up in **normal mode** for navigation. From normal mode, we can go to **insert mode** (i / a) to add and remove text, or **replace mode** (R) to replace text, or **visual mode** (v for normal, shift-v for line, ctrl-v for block), and the **command-line**, which is entered using `:`.

## Command line
`:q` to quit
`:qa` to quit all open buffers.
`:w` to save the file
`:wq` to save and quit. 
`:help [key]` to view documentation on a key.

## Normal mode
`h j k l` to move cursor left, down, up, right. 
`0` to move to beginning of line
`$` to move to end of line
`^` to move th tne first non-empty character of the line.
`C-U` and `C-D` for page up and down
`gg` to move to beginning of file, `G` to move to end of file
`l` to move to bottom of window
`f [key]` to find the first character [key]
`F [key]` to find the first character [key] before cursor
`t and T` have same behaviour as `f` but move right beside the key
`o` to open a new line below the cursor and jump into insert mode
`O` to open a new line above ...
`d [motion]` to delete, e.g. `d [w]` to delete a word, `d [e]` to delete the remainder of a word if cursor is at the middle of word
`c [motion]` to change (delete and jump into insert mode). `c w` to change a word
`r` to replace a character, `R` to start replacing from cursor
`u` to undo, `U` to undo all changes on the line

`y` to yank (copy) `yw` to copy a word, `yy` to copy a line
`p` to put (paste)

`.` to execute the last command again.

## Visual Mode
`v` to enter visual mode
`$` to select to end of line

`V` to enter visual line mode
`C-v` to enter visual block mode
`~` a selection to flip the case

## Counts
`[number] [command]` to execute 


## Modifiers
`c i [` to change inside square bracket, when in a square bracket enclosing. This uses the `i` modifier. Can be used to change inside [, ], ', ", (, ), {, } groups.
`%` to jump between matching parentheses/brackets
`d a (` to delete around and including a parentheses group

## Search
`/` in normal mode followed by word to find the first instance of a word, e.g. `/range`. Press `n` to cycle occurrences, and `N` to cycle backwards.

## Configuration of Vim
The `.vimrc` file shows the configuration of vim for customization. You can also configure terminal and REPLs (like Python) to work in vim.
