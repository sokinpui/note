# Pointer
## Declaration
```C
  int *p1; // pointer
  int **p2; // pointer to pointer
  int *p3[size];  // array of pointer
  int (*p4)[size];  //pointer point to array
  int (*p5)[size][size];  //pointer point to 2D array
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
output: `2D array in 1D presentation: 1 2 3 4 5 6 7 8`




