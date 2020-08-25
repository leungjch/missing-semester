# Lecture 4 - Data Wrangling
When we have streams / logs of data, we would want to handle this data to make insights. 

## Getting data
Use `| grep` to pipe data

## Searching data
Use `sed` with Regex:

`.` any character
`*` 0 or more of a character

To practice regex, use:
`echo "STRING" | sed 's/REGEX'`

Examples:
``` bash
" Substitue 'a' and 'b' with nothing
> echo 'aba' | sed 's/[ab]//' 
ba 

" Sub a or b with nothing ONCE
> echo 'bba' | sed 's/[ab]//'
ba

" Sub a or b with nothing ALL
> echo 'bbac' | sed 's/[ab]//g'
c

" Add modifiers
