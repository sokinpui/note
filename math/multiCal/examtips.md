check path independence first before find the line integral.
> Prove Path independent:
> For proving $F$ is gradient field or not, some condition can be checked
> 1. $curl(F) = 0$, which prove it is a gradient field
> 2.  the integral of closed path is zero in every path
> 3. Equality of mixed partial derivatives
> $$\frac{\partial^2f }{\partial y \partial x} = \frac{\partial^2f }{\partial x\partial y}   $$
> if $F =grad(f)$ then the condition hold and hence it is F is gradient field.

see [prove of path independence](./line_integral.md).

## evluate the line integral
Once the function $F$ is provided to be gradient field.
1. use a simple path to evluate. Parametrize the curve in its simple way: $$r(t) 
   = A + t(B-A),$$ for $0≤t≤1$.
   need to change the limit of integral from $dr$ to $dt$, $$\int_{A}^{B} F(r)\cdot dr 
   = \int_{t_0}^{t_1}F\big((r\small(t\small))\big) \cdot \frac{dr(t)}{dt} \cdot 
   dt = \int_{t_0}^{t_1}F(t) \cdot r'(t) dt$$
2. use the fundamental theorem of line integral, require to find the original 
   potential field.
   use integral to find each component of the potential feild.
   for a three variables gradient field:
   $$\int f_x = f + g(y,z)$$
   the constant is the remain variables.
It is always suggested to first try to find the potential field, once it is 
found, $curl(F)$ can be easilu proved and line integral can be evluated easily.



