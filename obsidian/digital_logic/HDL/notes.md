Declarate a function
```
module mod_name(i/o pins);
output pins;
input pins;
wire wirename;

and				g1(output, inputs);
operation 	    #(time delay)gatename(output, inputs);
				/* 1st element is output*/
or				#(30)G2(w1, A, B ,C);
endmodule
```


	assign D=(A&B)|~C
which is same as $D =(AB)+C'$

& = AND, | = OR, ~ = NOT
Declarate a function using boolean algebra
```
module C1(A, B ,C, D, E, F);
	output E, F;
	input A, B ,C ,D;

	assign E = A|(B&C)|(~B&D);
	assign F = (~B&C)|(B&~C&~D);
endmodule
```



gate-level modeling
-------------------
use HLD to model the gate structure

Dataflow modeling
-----------------
use HDL to describe the combination circuit
arithmetic
+ : binary addition
- : binary substraction

logic
& : bit-wise AND
| : bit-wise OR
^ : bit-wise XOR
~ : bit-wise NOT

{ } : concatenation;

?: : conditinoal
condition? true-expression : false-expression;

Behavioral modeling
-------------------
declarate the size of the bit:
```
{size}'{b: binary, d: deciaml, o:..., h:...}{logic represtation}
2'b00
```

Structure of stimuls module
---------------------------
```
module testname
    declaration
    instantiation
    generate stilmulus using `initial` and `always`
    display output
endmodule
```


the code inside `initial` will execute when the variable inside change.
