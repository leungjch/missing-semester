# Lecture 4 - Data Wrangling
When we have streams / logs of data, we would want to handle this data to make insights. 

## Getting data
Use `| grep` to pipe data

## Subsetting data, regex
Use `sed` with Regex with the 's/' to 'substitute'. Use '//' suffix to replace with nothing (i.e. delete)

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

" Add modifiers (use -E to use modern regex)
" Sub 0 or more of the string "ab" with nothing
> echo 'abcaba' | sed -E 's/(ab)*//g'

" Remove 'ab' OR 'bc'
echo 'abcababc' | sed -E 's/(ab|bc)*//g'
cc
```
A capture group is ( ) or [ ]. In the replacement, use \1 to retrieve first capture group, etc. 

