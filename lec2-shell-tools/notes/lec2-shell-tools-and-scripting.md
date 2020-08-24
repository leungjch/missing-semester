# Lecture 2: Shell Tools and Scripting
# Basics and variable assignment
The bash scripting language:
``` bash
echo "Hello" # Hello

foo=bar 	# Valid
foo = bar 	# Invalid (bash thinks we're calling command 'bar'

> echo "Value is $foo" # "Value is bar"
> echo "Value is $foo" # "Value is $foo"

```
Note that spaces are very important in bash because we are working with commands.

# Writing Shell Scripts
Write this in vim with .sh file extension:
``` bash
# Creates a folder named "$1" and enters the directory
mcd () {
	mkdir -p "$1"
	cd "$1"
}
```
Then use `source [filename].sh` to load the file into the shell, and execute the function with  '[filename] [args]'

# Boolean operations
Use `echo $?` to see the error code: 0 for no error and 1 if error occurred.
``` bash
> true
> echo $?
0 

> false
> echo $?
1

> false || echo "Oops fail"
Oops fail

> true || echo "Will not be printed" # short circuit
> true && echo "Things went well"
Things went well

> false ; echo "This will always print" # Concatenate commands

# Substitution / string interpolation
Use `$(var)` in a double quote (not single quoted) string to perform string interpolation.

``` bash
> echo "We are in $(pwd"
We are in /home/leungjch/Documents/uWaterloo/repos/missing-semester
```

# More command line shortcuts
use `*` to catch all
`ls *.sh` shows all files with .sh file extensioon

## "Globbing"
Use `{a,b,c}` to expand out:
`touch test{1,2,3}.sh` creates "touch1.sh", "touch2.sh", "touch3.sh".

Use this twice to get the "cartesian product"
`touch test{1,2,3}.{sh, py}` creates 6 files in total

# Using bash within another programming language
Suppose we have a Python script `test.py` that prints out the arguments given in:
``` python
#!/user/bin/env python
import sys
for arg in reversed(sys.argv[1:]):
	print(arg)
```
The first line 
`#!/user/bin/env python`
is specifying that Bash should look in the user's bin and use python to interpret the file. The file is then run like `./test a b c` which  outputs "a b c".

# Summarizing man pages
Man pages are often long, so use `tldr` to summarize a man page and also get examples.

# Find
Use 
`find . -name src -type d` to find all directories with "src" name, starting at the current folder as indicated by `.`

`find . -path '**/test/*.py**' -type f` to find all python files that are under a "test" directory. 

## Chaining commands with find
After finding a file, we can run commands on each file:
`find . -name "*.tmp" -exec rm {} \;` finds all temp files in the current directory and removes them.

# Grep (text search)
Use `grep foobar mcd.sh` to find all mentions of foobar in the mcd.sh file.
Or `grep -R foobar .` to search all files in the directory.

# History and backwards search commands
Type `history` to see a history of the commands executed. Pipe it with `grep` to filter desired commands, like `history | grep cd`

Type CTRL-R to perform a backwards search on a command. Press CTRL-R to cycle through the matches.

# Directory listing and matching
Use `tree` to gett a tree diagram of the directory.
Use `nnn` to explore a file system using arrows. 


