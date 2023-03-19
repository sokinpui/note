Directional derivatives in simple words: flux per distance  

A given function in three varibles, $x,y,z$, which is
$$f(x, y, z)$$
we move the function in direction parallel to unit vector $u$ from point $P$ to 
point $Q$.
$df$ is the amount change of function $f$, $\delta s = |\delta R|$ is the distant 
between point P and point Q.
$\frac{\delta f}{\delta d}$ is the average rate of change of $f$ as $f$ move from 
P to Q.
Note that:
$$\frac{df}{ds} = \frac{\partial f}{\partial x} \frac{dx}{ds} +\frac{\partial 
    f}{\partial y} \frac{dy}{ds} + \frac{\partial f}{\partial z} \frac{dz}{ds} $$
which can be expressed in:
$$ \frac{df}{ds} = \left(\frac{\partial f}{\partial x}i + \frac{\partial
        f}{\partial y}j + \frac{\partial f}{\partial z}k \right) \cdot
\left( \frac{dx}{ds}i + \frac{dy}{ds}j + \frac{dz}{ds}k \right)$$
$$\frac{df}{ds} = \left(\frac{\partial f}{\partial x}i + \frac{\partial
        f}{\partial y}j + \frac{\partial f}{\partial z}k \right) \cdot
\frac{dR}{ds}$$
note that R is an vector an is parallel to unit vector u, so,
$$\frac{df}{ds} = ( \nabla f) \cdot u $$
$$\frac{df}{ds} =  |\nabla f| cos\theta $$
when $u$ is not unit vector,
$$\frac{dF}{ds} = \frac{1}{|u|}\cdot u \cdot \nabla F $$


# Properties: 
1. the vector $\nabla f$ points in the direction in which $f$ increase most
rapidly.
2. The length of the vector $\nabla f$ is the maximum rate of increase of $f$


***Gradient :***
Definition of gradient :
![](../../attach/p-8.png)
which is always t he normal vector, imagine a multivariables function $f$ at $P_0$ as a vector, since d$f$ is the change of $f$, and can be represented by a vector, as take partial derivative, d$f$ tends to zero, and the shortest distance must be the normal vector that is the same direction as the function initial moving to at $P_0 =\nabla{f}\cdot u$  lie on the derised tangent plane, where such vector can be foundd by $u =(x,y,z)-P_0$ 
it is obtaining the tangent plane that lie on $P_0$, since tangent plane always prependictular to normal(gradient)

Finding Max/Min:
apply lagrange multipliers for function $f$ with $M$ manys constraints:
$$L(x_1,\dots,x_n, \lambda_1,\dots,\lambda_M)=f(x_1,\dots,x_n)-\sum_{k=1}^M]\lambda_kg_k(x_1,\dots,x_n) $$
function $g$ is the condition function, and solve
$$\nabla_{x_1,\dots,x_n}L(x_1,\dots,x_n, \lambda_1,\dots,\lambda_M)= 0$$
hence 
$$\nabla f(x)-\sum_{k=1}^M\lambda_kg_k(x)=0$$

and $$g_1(x)=\dots=g_M(x)=0$$
we desire $P_{max}$ or $P_{min}$ and don't care the multlplies $\lambda_k$.
see [lagrange mulitpliers](./lagrange_multiplies.md).

Please refer to wiki:
https://en.wikipedia.org/wiki/Lagrange_multiplier

[](<%%>)?]

