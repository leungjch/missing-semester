# Lecture 1: Shells
Shells are the primary way to interact with a computer. The most common shell isBash (Bourne Again Shell)

# Common Bash scripts
`date`Shows date

`echo [string]` Echoes back a string

# Environment variables
The computer can recognize `date` and `echo` using "invariant environment variables". Examples of env vars are the location of home directory, $PATH variable

`echo $PATH` Shows all of the paths that Bash will search to find commands (e.g. date/echo)

`which echo` Shows the path of the echo file that allows for the echo command

# Absolute and relative paths
An absolute path shows the full path, and a relative path shows another location relative to your current position.

To find absolute path currently, print
`pwd` Prints full path of current directory

`cd` Change directory

`.` Current directory

`..` Parent directory

E.g. to go up one folder, use `cd ../`. 

`ls` show all files in the directory

`ls ..` shows files in parent directory

`cd ~` goes to home directory

`cd -` goes to last directory

# Help
To read the documentation about a command, use the command followed by --help
`ls --help`

Flags are required arguments to pass in. A flag does not take in a value.
Options are optional arguments to pass in. An option takes in a value.


# More commands
Use `ls -l` to show a list of files with detailed info.

`mv` moves the file somewhere. It can also be used to rename a file.
`cp` copies the file somewhere. 
`rm` removes the file. `rm` cannot remove directories, only single files. Use the `-r` flag to remove the file recursively. 
`rmdir` removes directories.
`mkdir` makes a new folder (directory).
`man [command]`  shows a formatted documentation of the command.

# Permissions
When we use `ls -l`, we see this:
```
drwxr-xr-x 3 leungjch leungjch 4096 Aug 23 17:30 Documents
```
The first string of characters indicates info about whether it is a [d]irectory, as well as its [r]ead, [w]rite, and e[x]ecute permissions. The execute permission corresponds to whether a user can enter the directory or file. 

The second and third column indicate the owner and group of the file (leungjch). 

# Streams
The shell is powerful when programs are combined together.
Every program has an input stream and an output stream.

```
< file > file^C

```
`cat` Used to print out the contents of a file

`echo hello > hello.txt` Writes hello to hello.txt

`cat < hello.txt` Print out the contents of newly created hello.txt

In summary, `>` is used to write into (overwrite) and `<` is used to get the output.

`>>` appends

`|` is the pipe. It means 'take the output of the program on the left and make it the input of the program on the right.

Ex: `ls -l / | tail -n1` Gives the last row of the listing of the root directory. 

# Users
The **root** user is the administrator user and has userid of 0. It's a 'superuser'. 

`sudo [command]` Executes a command as super user. 

`sudo -i` # Become root

# Opening files
`xdg-open [file]` Opens the file using an appropriate application.
