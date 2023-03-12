compensate  -- 補償

 ---
use gary code to mark the position of the minterm in the matrix, the binary number of the symbolic of the gary code give the order of terms in the minterms table.
The square unmarked with one is the complement of the marked one's.
![[../attach/2.png]]
Prime implicants - -every group of adjacent squares. 
essential implicants -- a minterms has only one prime implicant.
don't care condition, some of the minterm is unspecified so their state is 0 or 1 doesn't matter. 

NAND implementation:
First present in sum of product of minterms
invert-OR: x'+y' = (xy)'
AND invert: (xy)' 

NOR implementation: 
First present in prouduct of sum of minterms
invert-AND: x'y' = (x+y)'
OR invert: (x+y)'

exclusive-OR: xy'+x'y
exclusive-NOR: (xy'+x'y) = xy + x'y'
exclusive-OR operation is both commutative and asociative 
Exclusive-OR is odd function, where odd numbers of 1 give 1, otherwise 0.
Exclusive-NOR is even function, where even numbers of 1 give 1, otherwise 0.
exclusive-OR is mainly used for partiy checking and gerenation

(even parity check) Determine the Parity bit: P = (x $\oplus$ y $\oplus$ z) 
check error C = (x $\oplus$ y $\oplus$ z $\oplus$ P)

Exclusive-NOR == equivalent 

# wired OR and wired AND gates
![[../attach/p1.png]]
not a physics gates 