%point mass model curve%
%forward acceleration forces in Newtons%
F = 500;
%mass given in kilograms%
M = 190;
%distance strait
Ds = 0;
%radius turn 1
r1 = 15;
%degrees circle
deg1 = 25;
%radius turn 1
r2 = 15;
%degrees circle
deg2 = 25;

%cf max
cfm = 4000;

%x is distance within program
x = 0;
%t is time
t = 0;
%v velocity
v = 0;
%cumulative distance within program
S = 0;
%i is interval in each step
i = 0.01;
%diameter
d = 2*r1;
%centrifugal force
cf = 0;

z = 0;
q = 1;

Dc = Distance(r1,deg1)

%% circle one distance equation

%Circumference equation
c1 = 3.14*d;
%distance over circle
Dc1 = c1 * deg1/360;

    %circle one distance equation
        %Circumference equation
            c1 = 3.14*d;
            %distance over circle
            Dc1 = c1 * deg1/360;

    function Dc = DistanceT(r,deg)
    
    d = 2*r;
    
    c = 3.14*d;

    Dc = c * deg/360;

    end

%%
%acceleration kinematic equation
%A = F/M;
%centrifugal equation
%cf = M*v^2/r1;


% [M*v^2/r] = ndgrid(cf = M*v^2/r);
% out = arrayfun(cf = M*v^2/r)







%{
function (t,v,s) = Strait(D)
    %acceleration code
        while S < D
            x = v*i + 1/2*A*i^2;
            t = t + i;
            S = S + x;
            v = v + A;

        end
end
%}

  %{
    %circle code
        while S < D
    
            cf = M*v^2/r1;

            if cf > cfm
                v = v;
            else 
                v = v + A;
            end


        x = v*i + 1/2*A*i^2;
        t = t + i;
        S = S + x;
        q = q +1;
        z(2,q) = cf;
        z(1,q) = v;
        z(3,q) = S;

   



        end
end
  

%% program calling

% turn one setup
Dc = Distance(r1,deg1)
