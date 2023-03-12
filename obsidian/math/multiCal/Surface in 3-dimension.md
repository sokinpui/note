Some simple pattern 
![[../../attach/Pasted image 20230109084940.png]]
***Gradient :***
Definition of gradient :
![[../../attach/Pasted image 20230109085055.png]]
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

Please refer to wiki:
https://en.wikipedia.org/wiki/Lagrange_multiplier