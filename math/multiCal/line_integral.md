basis form is 
$$ \int_cF\cdot dR$$
we may parametrize the curve in anyway that seems convenient.

**Physical meaning**: Finding the work done by the path.

line integral not depend on the paametrization, so the range of initial and terminal
point depend on you for convenient computation.

## Skills to parametrize a curve 
we can parametrize a curve in any way that seems convient. Since the line integral doesn't depend on the parametrize form, the direction and path always keeps the same.


# Notes
The function $f$ can be written in parametic form, and can choose any range of t.
F is vector function, dR is position vector with the unit vector $(dx)i+(dy)j+(dz)k$ 

**scalar field** is a vector function give scalar, it has is subfield gradient field by taking gradient of each variables to become the compleont of the vector function gradient field. 



**Green's theorrm**: 
$$\oint_C F\cdot dR = \oint_c Mdx + Ndy = \iint_R
\left(\frac{\partial N}{\partial x }-\frac{\partial M}{\partial y }\right)dA$$
where *A* is the area closed by the path *C* 2-d version Stokes' theorem.
$\oint_C F\cdot dR = \oint_c Mdx + Ndy$  come from the dot product.§

**Properties of Green's theorm and Stokes's theorem**
**If $C$ is a simple closed path**
1. $\oint F \cdot dR = 0$ for every simple closed curve C 
2. $\int_C f \cdot dR$ is independent of the path 
3. F is a gradient field 
4. $curl \space F= 0$ 
The statement in 4 is because it is the gradient field of some function. imagine the determinant
form of curl, they have two row same, so $curl\space F = 0$ 

## Surface-integral:
$$ \iint_Sf(x,y,z)dA$$  
**applicaiton of surface integral : flux** 

**Guess's theorm or divergence theorem** 
F is a vector function, $F\cdot ndA$ is the flux of F through the surface $dA$ per unit time.    
$$\iint_S F\cdot n dA = \iiint_R \nabla \cdot F dV $$

**Stokes's theorem**  $$\oint_CF\cdot dR = \iint_A(curl\space F)\cdot ndA = \iint_A\nabla \times F\cdot ndA $$ applicatible in 3-dimensions. $F$ is a 3-d vector, $R$ and $A$ is defined as following   **definition of divergence and curl of vector field $F=Li+Mj+Nk$**
![](../../attach/p-9.png)


$$ div F = \nabla\cdot F = \left( \frac{\partial}{\partial 
x}+\frac{\partial}{\partial y}+\frac{\partial}{\partial 
z}\right)\cdot(Li+Mj+Nk)= \frac{\partial L}{\partial x}+\frac{\partial 
M}{\partial y}+\frac{\partial N}{\partial z}$$
$$ curl F = \nabla \times F$$
**Cuation:** 
$n$ must be unit normal vector, since above theorem has its physical meaning of finding flux. 

## **Lenght of the curve:**
**Vector parametic function**
$S$ is the lenght of the line, $r(t)$ is the vector parametic function. 
$$ S = \int_a^b \sqrt{r'(t)\cdot r'(t)}dt $$
The lenght of line $r(t)$ from t = a to t = b.

**realationship between$r(S)$ and $r(t)$**
$$ r'(t) = r'(S) \frac{dS}{dt} $$
$$ r'(t) = r'(S) \sqrt{r'(t)\cdot r'(t)}= r'(S)\cdot |r'(t)|$$
$$ r'(S) = \frac{1}{|r'(t)} r'(t)$$

the meaning of divergence:
the rate of change of the vector field: to source or to sink
the menaing of gradient:
how the surface tends to be, gradient give the normal, since the  "flux" (type of projection) will be maxia if normalx

## Relationship between curl, gradient and divergence.
Gradient: the normal of the surface at that point
divergence: dot porduct to the gradient operator
Curl: cross porduct to the gradient operator
$f$ is the potential field, $F$ is the gradient field.
$$curl(grad(f)) = 0$$
$$div(curl(F)) = 0$$

# Path independence
if intgrate along closed path is always zero.
Gradient field $\iff$ path independence  $\iff$ integral along closed path is 
always zero 

## Prove Path independent
For proving $F$ is gradient field or not, some condition can be checked
1. $curl(F) = 0$, which prove it is a gradient field
2.  the integral of closed path is zero in every path
3. Equality of mixed partial derivatives
$$\frac{\partial^2f }{\partial y \partial x} = \frac{\partial^2f }{\partial x\partial y}   $$
if $F =grad(f)$ then the condition hold and hence it is F is gradient field.

### special case of path independence, 2D function.
$$\frac{\partial F}{\partial x} = \frac{\partial F}{\partial y}$$
sufficient to prove $curl(F) = 0$.

## Fundamental Theorem of Line integral
$$ \int_C \nabla f \cdot dR = f(B)-f(A) $$
Where A and B are the initial point and the end point along the path C 
respectively.
Given that the function inside integral is a gradient field, where $B$ and $A$ 
are the ending point and starting point of the integral.
$f$ should be a scaled multivariables function, $f$ should be a scalar field.
It immediately implies that the field is line independence field.


