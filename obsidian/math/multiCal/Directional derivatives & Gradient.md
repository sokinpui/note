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
