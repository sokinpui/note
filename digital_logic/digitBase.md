# Convert float to IEEE 32 bit 752 float
1. determine the sign.
2. Write the float in base-2 scientific notation.
3. find the exponent.
add or subtract from 127
4. write the manbissa in binary form.

$$
N = S \cdot 1 \cdot 2^{E-127}
$$
$$S_0 = S$$
$$S{1-7} = E$$
$$S_8 - 31 = F$$
