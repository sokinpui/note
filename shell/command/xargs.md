`xargs -o` redirect the stdin into /dev/tty, so application can open the argus 
as from terminal.
example:
`grep -l "patther" <dir> | xargs -o vim` can open the file that contain 
pattern.
