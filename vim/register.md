# small register
`-` : store the last deleted or yanked contents smaller than the size of line.

# number register
`[0-9]`: store the last 10 recently deleted or yanked contents, 0 is the most 
recent, 9 is the least recent.

# Alpha register
`[A-Z]`: append the value into the register of its lower case.

# Display the content of register
`:reg [register]`
