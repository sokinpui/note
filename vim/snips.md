# selection
```
     snippet q
     Your age: ${1|<18,18~60,>60|}
     Your height: ${2|<120cm,120cm~180cm,>180cm|}
```
press number to choose.



# python interruption.
The variables automatically defined in python code are:

   fn      - The current filename
   path    - The complete path to the current file
   t       - The values of the placeholders, t[1] is the text of ${1}, etc.
   snip    - UltiSnips.TextObjects.SnippetUtil object instance. Has methods
             that simplify indentation handling and owns the string that
             should be inserted for the snippet.
   context - Result of context condition. See |UltiSnips-custom-context-snippets|.
   match   - Only in regular expression triggered snippets. This is the return
             value of the match of the regular expression. See
             http://docs.python.org/library/re.html#match-objects


directly use `t[1]` to for place holder $1.
