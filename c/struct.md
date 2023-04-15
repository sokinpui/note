# struct
define a complex and customize data structure.
```c
struct strName{
    int a;
    char b;
    char *c;
    int a[];
}
```

# typdef
```c
typedef <original> <alias>
typedef struct StrName1{
    int a;
    char b;
    char *c;
    int a[];
} StrName1;
```

```c
int main{
    struct strName a;
    StrName1 b;
}
```
With `typedef`, don't need `struct` before declarate a new struct instance.
