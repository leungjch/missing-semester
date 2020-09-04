# Lecture 5: Command Line Environment

## Job control
`sleep [num]`: sleeps for [num] seconds.

`SIGINT` means "SIGnal INTerrupt". See `man signal` to see all signals

`jobs` to see all current and completed tasks

Use `nohup` before a command to specify "no hangup"

## Terminal multiplexer
A terminal multiplexer allows you to open multiple different workspaces.

Recommended: **tmux**

Hierarchy of tmux:
- Sessions
	- Windows
		- Tabs

`tmux` to start a new tmux session
`Ctrl-D` to exit tmux

Ctrl-B C to create a new window
Ctrl-B " to create a new pane
Ctrl-B [arrow] to switch panes
Ctrl-B Z to zoom in and out of a pane


## Dotfiles
Motivation: aliases:
- `alias gs="git status"`
- `alias mv="mv -i"`
- `alias [cmd]` to view its alias definition

