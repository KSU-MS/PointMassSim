%point mass model curve%
%forward acceleration forces in Newtons%
F = 500
%mass given in kilograms%
M = 190
%distance
D = 0
%radius
r = 15
%degrees circle
deg = 25
%cf max
cfm = 4000

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
%diameter
d = 2*r
%centrifugal force
cf = 0

z = 0

%Circumference equation
c = 3.14*d
%distance over circle
D = c * deg/360

%acceleration kinematic equation
A = F/M
%centrifugal equation
cf = M*v^2/r


% [M*v^2/r] = ndgrid(cf = M*v^2/r);
% out = arrayfun(cf = M*v^2/r)


q = 1






while S < D
    
    cf = M*v^2/r

    if cf > cfm
       v = v
    else 
        v = v + A
    end


    x = v*i + 1/2*A*i^2
    t = t + i
    S = S + x
    q = q +1
    z(2,q) = cf
    z(1,q) = v
    z(3,q) = S

   



end

 h = histogram(z)
  histogram(z,cf)
  histogram(z,v)
