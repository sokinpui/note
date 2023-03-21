***Single integral***= integral over a line

***Double integral*** = integral over a plane, it is sometimes more convenient for calculation to transfer into polar system

***Triple integral*** = integral over a solid, which is not equal to obtain the volume if triple integral with a three variables function.

### Triple integral in different coordinates systems
spherical coordinates:
$$\iiint_Rf(x,y,z)dV=\int_{\beta_1}^{\beta_2}\int_{\alpha_1}^{\alpha_2} \int_{r_1}^{r_2} f(R, \phi, \theta)R^2sin\phi dRd\phi d\theta$$
cylinderical coordinates: 
$$\iiint_Rf(x,y,z)dV=\int_{\alpha|1}^{\alpha_2}\int_{r_1}^{r_2}\int_{z_1}^{z_2} f(z,r,\theta)rdzdrd\theta$$

## Mean value theorem
$$\iint_R f(x, y)dxdy = f(x_0, y_0)A$$, $x_0, y_0$ is the average value.


If the region is bounded by coordinates planes, It is clearly that
![](../../attach/p-1.png)

### Area of Curved surface :
$$S=\iint_R \sqrt{f_x^2+f_y^2+1} dA $$
Differ from surface integral, surface integral give the quatom from the specify
area. see [Surface Integral](./line_integral.md#Surface-integral)
They are the same when the function in surface integral is constant 1, same in
line integral, $$\iint_S 1 dS = S = \iint_R\frac{dA}{cos\gamma}$$.

$$S = \iint_R\frac{dA}{cos\gamma}  $$
It is done by projection of the area on the x-y plane onto to the curved surface above it.

**multi-integral** can work with different coordinates system.
see [polar system](./polar_system.md) or spherial system or
cylindrical coordinate system.


