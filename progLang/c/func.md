# Function
Since the function pass the parameter by value. The variables pass as parameter 
will not change outside the function, if the contenct store in its address 
remain unchanged. Except the array, since array is equivalent to pointer.
[More about pointer](./pointer.md)

# Pointers to functions
```c
(int (*)(void *, void *))(numeric ? numcmp : strcmp)
```

Declaration:
```c
int (*comp)(void *, void*)
```
`comp` is the pointer to the function that have two `void` argument and return
an `int`.
Can combine with the tenary condition operator, for exampel:
```C
#include <stdio.h>
#include <ctype.h>
void cpr(char n1, char n2);
void npr(char n1, char n2);
void pr(void (*type_print)(char,char));

int main()
{
    char alpha[100]="abcdefghijklmnopqrstuvwxyz";
    char *p=alpha;
    cpr(*(p+1), *(p+2));
    npr(*(p+1), *(p+2));
    pr(0 ? cpr : npr);
    
}

void pr(void (*typepr)(char, char)){
    (*typepr)('W', 'A');
}

void cpr(char n1, char n2){
    printf("The value is %c\n", n1);
    printf("The value is %c\n", n2);
}

void npr(char n1, char n2){
    printf("The value is %d\n", (int)n1);
    printf("The value is %d\n", (int)n2);
}
```

See more example of Pointers to functions,
```C
int *f; // function return int *
int (*pf)() // pointer to function that have no arguments and return int
```

# Prototype
Prototype can be declarate anywhere if you want, in the beginning of the code
or inside some functoin that is before the definition.

# Value return
You can assign value to a global value while returning:
```C
#include <stdio.h>
int foo(int number);
int gn;

int main()
{
    int a=3;
    printf("foo(a) = %d\n", foo(a));
    printf("gn = %d\n", gn);
}

int foo(int n){
    n = n * n;
    return gn = n;
}
```
output:
```C
foo(a) = 9
gn = 9
```
