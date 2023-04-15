Inner product space is not necessary to be dot product.  The rule of inner 
product is defined by the given rule. 

## Inner product
An inner product on *V* is a function that assigns to each ordered pair of 
vectors **u**, **v** in *V*  a real number **(u, v)** satisfying the following 
properties:
- (u, u) ≥ 0; (u, u) = 0 iff u =0
- ...
- ...
- ...

## standard inner product(Natural basis)
$$ (u,v)=u^Tv$$
## Inner product(basis as set $S$)
$$(v,w)=[v]_S^T C [w]_S$$
$C$ is called the matrix of the inner product with respect to the ordered basis 
$S$.
The product $C$ is representation of the linear transformation that transform 
the natural basis to desired basis $S$

## Orthogonal set and orthonormal set
A set is orthogonal if any two vector in the set is orthogonal A set is 
orthonrmal set if any two vector in the set is orthogonal and every vector is an 
unit vector

### Gram-Schmidt-Process

$$v_{i+1} = u_{i+1}-\sum_{i=1}^{n-1}\frac{(u_{i+1},v_i)}{(v_i,v_i)} v_i$$
where $v_i$ is the vector in the orthonormal set(request basis), $u_i$ is the 
set(original basis) of the given subspace.  consider subset $\{v_1, v_2,\dots, 
v_i \}$, such that $(v_i, v_j)=0$ for i less then j


## QR factorization
A $n\times m$ martrix $A$ can writin in  $A = QR$ where $Q$ is an $n\times m$ 
matrix and $R$ is an $m\times m$ upper triangle matrix $$ A = QR $$ 

## orthogonal complements
$W$ is a finite subspace of vector space $V$ $w$ is any vector in $W$, $u$ is 
any vector in $W^{\perp}$ such that $(u, w)=0$, where $W^{\perp}$ is call the 
orthogonal comoplement of $W$ 

## Projection vector
$v$ in $V$ projected on subspace $W$ of $V$ with orthonormal basis$\{w_1, w_2, 
\dots, w_m\}$ The projetion of $v$ on $W$ is given by :
$$proj_wv = \sum_{i=1}^m(v,w_i)w_i $$
**vector in orthogonal basis**
Any vector $u$ can be express in this form, where set $\{v_i\}$ is the 
orthogonal basis.  $$u = \sum_{i=1}^{n}\frac{(u_{},v_i)}{(v_i,v_i)} v_i$$

## Dual space
Dual space contains all the elementary linear transformation for vector space. 
You can imagine that all the linear transforamtion is group by the elements in 
the dual space


