# Pointer
## Declaration
```C
int *p1; // pointer
int **p2; // pointer to pointer
int *p3[size];  // array[size] of pointer
int (*p4)[size];  //pointer to array[size]
int (*p5)[size][size];  //pointer point to 2D array[size][size]
```
## Assign
```
int str[size];  // string is 1D array
int arr[size][size];

p1 = str;  // assgin the address of the first element to p
p2 = p1;  // p2 point to the adress of str
p3[n] = some array;
p4 = str;
p5 = arr;
p1 = arr;  // 2D array is actuall 1D array.
```

## use
`p1 = arr`, the value of 2D array can be call by *(p1 + base * row index + 
column index)

2D array in 1d array:
```C
int a[2][4] = {
{1, 2, 3, 4},
{5, 6, 7, 8}
};
p = a;
size = 2 * 4;
printf("2D array in 1D presentation: ");
for ( i = 0 ; i < size ; i++, p++ )
printf("%d ", *p); 
```
output: `2D array in 1D presentation: 1 2 3 4 5 6 7 8`. However the assignment of `p = 
a` raise warning. To avoid warning, use instead,
```C
int a[2][4] = {
{1, 2, 3, 4},
{5, 6, 7, 8}
};
p = &a[0][0];
    size = 2 * 4;
    printf("2D array in 1D presentation: ");
    for ( i = 0 ; i < size ; i++, p++ )
        printf("%d ", *p); 
```
`p = &a[0][0];` will not raise warning.


# Pass to function
The array is passed by value, a local copy is made, see the follow code:
```C
#include "stdio.h"
void getstr(char str[], int deep);

int main(){
    char str[] = "string";
    printf("addres of str before put into function = %p\n", &str);
    int start=0;
    getstr(str, start);
    printf("addres of str after put into function = %p\n", &str);
    return 0;
}

void getstr(char str[], int deep){
    if ( deep > 5 ){
        return;
    }
    printf("Address of str during function processing = %p\n", &str);
    deep++;
    getstr(str, deep);
}
```
The output are:
```sh
addres of str before put into function = 0x16dd8f3f4
Address of str during function processing = 0x16dd8f3b8
Address of str during function processing = 0x16dd8f388
Address of str during function processing = 0x16dd8f358
Address of str during function processing = 0x16dd8f328
addres of str after put into function = 0x16dd8f3f4
```
Everytime the array pass to function, a loacl copy is created, those copy have 
different address.

To be noted, the value in address will change inside the function, while the 
loaction of the address will not change, it is especially useful when passing 
string or array to the function. See the following example:
```C
#include <stdio.h>

int shift(char *s){
    for (; *s; s++)
        *s = 'F';
    return 1;
}

int main(int argc, char *argv[])
{
    char s[]="HELLO";
    printf("Before change, s = %s \n", s);
    printf("Address before change is %p\n", s);
    shift(s);
    printf("After change, s = %s \n", s);
    printf("Address after change is %p\n", s);
}
```
Output:
```plain text
Before change, s = HELLO
Address before change is 0x16d883338
After change, s = FFFFF
Address after change is 0x16d883338
./ptr  0.00s user 0.00s system 2% cpu 0.053 total
```
Although array can be directly used as pointer without assignment to extra 
pointer, assign array to extra pointer may be helpful since most of the time you 
don't want to use the array as the pointer unless it is string.

# Error
```c
*argv-- = *argv++  // not allowed
```
Everyline only allow one pointer with one arthemtic operation.
```c
epr(*++p, *++p);
```
Even function allow `epr(*++p)`, the same pointer can have only one arthemtic 
operation along one line. But use number for arthemtic operation is allowed, 
like:
```c
cpr(*(p+1), *(p+2));
```

# assign pointer to pointer.
Look follow example:
```C
#include <stdio.h>
#include <ctype.h>

int main(int argc, char *argv[])
{
    char s[] = "123456789", *p=s, *pp=p;
    p+=4;
    printf("element that s points to = %c\n", *s);
    printf("element that p points to = %c\n", *p);
    printf("element that pp points to = %c\n", *pp);
    return 0;
}

```
output:
```C
element that s points to = 1
element that p points to = 5
element that pp points to = 1
```
Although pp and p point to the same address, but they are no synnomic.

# Arrary ans string
You don't have to assign the array to pointer, and you can use it as a pointer.
```C
#include <stdio.h>
#include <ctype.h>
#include <string.h>

void reverse(char s[], char ps[]){
    printf("s = %s\n", s);
    printf("ps = %s\n", ps);
}

int main(int argc, char *argv[])
{

    char s[] = "hello";
    char *ps = "World";
    reverse(s, ps);

    return 0;
}
```
Output:
```C
s = hello
ps = World
```
But be careful that `*ps = "World"` is a constant.

