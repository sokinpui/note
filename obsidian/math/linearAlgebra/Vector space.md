***Subspace***
Null space/zero space
Parametric equation
Closure properties
any set $S$ satisfy two closure properties of Vector space is a subspace of vector space $V$ 

***Span***
Linear combination of given subset of vector space

***Linearly independence***
The element In the subset is the basic one

## Transition matrix (Specify case of linear transformation)
Transition matrix map the vector space from one basis to another basis
**take the linear transfomation as $L(v) = v$, the representation of transition can take $I_n $ for convenient**
The equation of coordinate from one basis to another basis
$$[u]_S=P_{S\leftarrow T}[u]_T $$
$S = {\{v_1, v_2, \dots , v_n}\}$ and $T = {\{w_1, w_2, \dots , w_n}\}$ are two ordered basis of vector space *V*, let $u$ be any vector in *V*.
$$ [v_1 v_2 \dots v_n][u]_S = u = [{w_1, w_2, \dots , w_n}][u]_T$$
we now obtain $[{w_1, w_2, \dots , w_n}]$ from $[{v_1, v_2, \dots , v_n}]$ by linear combination, let such transition matrix be n $\times$ n matrix $P_{S\leftarrow T}$, so
$$[{v_1, v_2, \dots , v_n}]P_{S\leftarrow T}=[{w_1, w_2, \dots , w_n}]$$
it is sufficient to obtain a easy way to find $P_{S\leftarrow T}$, and the first equation. 

Find each vector in T-basis with respect to the S-basis by combination,
$$[S][Tran] = [T]$$
vector space $V$ can be obtained in two ways,
$$V=[S][v]_S = [T][v]_T  $$
$$[S][v]_S = [S][Tran][v]_T $$
Therefore, transition matrix is,
$$P_{S\leftarrow T}=[S]^{-1}[S][Tran]=[Tran]$$



***Rank***
Is the dimension of the space spanned by the row or column vector 


# Disprove a vector space or subspcae
Vector space, if the space value to hold the arthemtic and multiplicatoin operation, then it is not, otherwise, if it holds all operation then it is.
Subspace: if hold arthemtic and scalar closure properties, then it is subspace.

subspace is set that use the same operation of its master space, vector space.

# isomorphism
if two function are both onto and one to one, and exist inverted function, then they are said to be isomorphic
function can be vector function and linear transformation or mapping
example:   $M_{2\times 2}$ is isomorphic to $R_4$, as there exict mapping  $L(m)=v$ .

# onto
if there exist mapping $f(a)=b$ then  $a$  is onto $b$,  









