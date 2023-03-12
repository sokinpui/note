# HDL for combinational circuits
other than logic 1 and 0, there are x stand for unknown and z for
high-impedance, similare to 5V and 0V.
x is convenient for the ambigous of the input and output

# gates function
the first argument is always the output of the gates.
use instantiate to declara a group of gates to avoid repeatition
    not
        n1 (Anot, A),
        n2 (Bnot, B),
        n3 (Cnot, C);
an defined module can also be instantiated in the form:
    module m1(a, b, c, d)
        statemnt;

    module anothermodule
        m1 m1a (output, inputlist...),
        .
        .
        .
           m1(output, inputlist...);


## Vector
use a vector to declara a input or output
    output [0:3] A,B;
the first elemet in vector is the most significant bit. Two vector output is 
declarated, use like array like A[0]

## buffer and not gate
buffer: return the original value
not: return the invrese valus


## three states gates
    bufif1
    bufif0
    notif1
    notif0
the gates is used in form:
    gate name (output, input, control)
the first is output, the last is the control input, the three states gates will 
work nomral if the control input is same as the number in its name.
for not gates, if the control input is zero the, the output will be high 
impedance either the logic input is.
high impedance is denoted as z
unknown is denoted as x

if connnect the output together, use function tri to indicate:
    tri out;
    bufif1 (output, input, control);
    bufif0 (output, input, control);

