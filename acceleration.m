%point mass model%
%forward acceleration forces in Newtons%
F = 500
%mass given in kilograms%
M = 190
%distance
D = 91.44
%x is distance within program
x = 0
%t is time
t = 0
%v velocity
v = 0
%cumulative distance within program
S = 0
%i is interval in each step
i = 0.01

%acceleration kinematic equation
A = F/M





while S < D
    x = v*i + 1/2*A*i^2
    t = t + i
    S = S + x
    v = v + A

end
