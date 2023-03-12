Initialization will be taken in other place don't worry this.
**flip-flop** is a binary storage that store one-bit information, like the 
black-white flag in three body.

**SR-Latches** will not change the state if input doesn't change.

with picture inserted
**SR-Latches** implmenet by NOR gates.
**S'R'-lateches** implement by NAND gates.
**SR-latches with contol input** implement by two level NAND gates.
Q stand for set states, Q' stand for reset states.

# D-latch and D flip-flops
latch is level sensitive, while flip flop is sensitive to the raise or fall of 
the state.

## Usage of flip flops
flips-flops is use to store the input, a D-type flip flops will store the input 
of D, Q will always equal to D and its complement is store in Q'.
Store as the next state.
Flip flop will not change the state if the input R and S back to the base state, 
example, in active high, RS=01, back to RS=00 will not change the state of Q(t).

## Differenct types of flip flops
**D flip flop**: storage the input into Q and its complement to Q'.
**jk flip flops**: change the state of the flip flops so to change the value 
store in flip flops.
**t flip flops**: complement the information storing inside the flip flops.

## boolean algebra of jk flip flop and T flip flop
$$D: Q(t+1) = D$$
$$jk: Q(t+1) = JQ' + K'Q$$
$$T: Q(t+1) = T^Q = TQ' + T'Q$$
D is the input in D flip flops.

# Avoid the change of output when the clock is active state.
**master-slave D flip-flops** change the out put whenever the pulse change.
**D type positive/negative edge-triggered flip flops** change merely when the 
poitive/negative transition occur.

# Implementation of positive edge triggered flip flops
Use three active high NAND latch to implement the positive edge triggered flip 
flops.
key idea is lock the input of R and S.
use $Reset$ to initialize the state of the flip flops. $Reset$ should be 
independent of the clock pulse $CLK$ and the input $D$. 

# Analysis of clocked sequential ciruits
## State table
1. present state
2. input(if have)
3. next state
4. output(if have)

## State diagram
insert a picture here.

## Characteristic equation
The equation describe how the flip flop works.
$$Q(t+1) = F\big(Q(t)\big)$$

## Flip flops input equation
For convenience, the input equation variables is defines in form of $$D_A=x+y$$ 
where $D$ is the input D of the flip flop and $A$ is the output of the flip 
flops with respect to the input D( indicate that A is related to D ), $x$ and 
$y$ are the input that connect to the input of the flip flop.

## Different types of equations
characteristic equation: descirbe how the flips flops works.
input equation: describe the relationshiop between external inputs and the flip 
flop inputs.
state equation: the expression of $Q(t+1) = F\big(Q(t)\big)$ in terms of 
external inputs and the present state.

## Merely and Moore machine
Mearly: the outpute depends by the present state and the present input.
moore: the outputs depend by the present state only, so moore machine is
synchronized with the clock.

## State reduction
Remove the equivalent one that is with the same input give the same output and 
the same state.

## Assignment
Assign a binary number to the states.

## Excitation table
The table present the transition from $Q(t)$ to $Q(t+1)$

## Sythesis
Sythesis means the procedure to desgin logic circuit from descrition words to 
circuit implementation.
The standard process:
1. interruption
2. state diagram -> state reduction
3. minimialization




