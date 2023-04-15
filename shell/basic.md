# shell script
## Shebang
```sh
#!/bin/sh
# script
.
.
.
```
The `#!` known as **she-bang**, sharp `#` and bang `!`. It indicate to the 
system that the script will be excuted by the /bin/sh.

## variable
Other than  wildcards, all string can be perform as variables.
**Assginment**:
```sh
var="string"
var = "string"
```
The second line interrupt as cmd `var` read arguments `=` and 
`"string"`.
**calling variables**:
```sh
echo $var
echo ${var}_suffix_foo
```

# shell command

`export`
`cat` concatanation and print


## pushd
```
pushd <dir>
```
push the argments to the directory stack list       

# xargs
```
xargs
find .vim | xargs ls -l
```
`xargs` convert the stardand input as argument of others commnds


grep
----
`grep -l ` will only list the name that contain the pattern

wc
--
`wc` words count, flags m for characters, l for lines, w for words 

cut
---
`cut -c 1,15` cut the character within the specific postion
`cut -f 1,5 -d:` f stand for field, d stand for delimiter, where the line is 
divide by the given delimiter, in this example, the field is divided by ":".
the range is in form of `1-5,6-7` or not specified range will be in form of 
`1,4,7`, the first example cut from bytes 1 to 5 then 6 to 7, the second 
example will cut from bytes 1, 4, 7.

paste
-----
`paste -s -d"\t\n\0 file`
-d specify the format display
or use `ls | paste - - -` to ls the contents in three columns


## ls
    ls -1
list the content in column, differ with -l that -1 only display the name of the directioary.

	ls -r 
-r reverse the order of listing directory.

	ls -t
-t List files in order of last modification date, newest first.

	ls -s 
-s sort by file sizs

	ls -rt 
combine the flag

	ls ; ls ; clear
use ; to run several sequential command with once input.

	ls | vim - 
| which refer to 'pipe', convery the output of the first command as the input of the second command.

	ls -lh
list the contents of the in column form with human readible file size details.

	ls -t | head 
sort the file according to the added time and show only the first few elements. 

**find**

	find [file path] [-flag] [target]
Example: 

	find . -name '*.c'
find files with suffix .c in current diectory 
need at least one argument, the file path you would like to search. 

	find -type d     
Find directories. 
For files, use -type f; for symbolic links, use -type l.
	
	cp -r dir1 dir2 
use -r flag to copy the contents of dir1 into dir2
	cp file1 dir1
copy the file1 into dir1.
	cp -i file1 file2
raise a permission before overwritten.

	mv source1 source2 ... sourceN tagert_dir
mv all the source file and dir into the tagert dir which is the last arguemnt in the 'rm' command.

## Mulit command
`cmd1 ; cmd2 ; cmd3 use ';' to run sequential command `

## Input/output redirection
### std output
```
cmd > file  # write the std output into the file
cmd >> file  # append the std output after the EOF
```
### std Input
```
cmd < file  # direct the input from file to the command cmd
cmd1 | cmd2  # pipe the std output of cmd1 into the cmd2
```

# Permission **Access right**
`-rwxrwxrwx`
first rwx display the right of the owner of the file,
second rwx display the right of the group owner of the file
third rwx display the right of others user
`-rwxr-x--`
If Access Right is not permitted, will show in '-'

# Regular expression 
*	match any length of characters.
?	match any single character.
[<pattern>]		match any character that is the pattern given.
[!<pattern>]	match any character that is not the pattern given.
`[...]` match the single character inside the brackets

## Brace expansion
it is use to give multli input in series or patter 

	echo file-{1, 2, 3}
output: file-1 file-2 file-3

	echo file-{1..3}
same output as above
'{..}' support descending order series

	mkdir dir-{a..z}-




