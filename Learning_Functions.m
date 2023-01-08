
    r1 = 15
    deg1 = 15
    r2 = 20
    deg2 = 20
    d = 15
    v = 0
    i = .01

    Dc = DistanceT(r1,deg1)
    Dc2 = DistanceT(r2,deg2)

    [time,velocity,distance] = Strait(d)



    function Dc = DistanceT(r,deg)


    
    d = 2*r;
    
    c = 3.14*d;

    Dc = c * deg/360;

    end


    function [t,v,S] = Strait(D,v,i)

        %acceleration code
        S = 0
        t = 0
        while S < D
            x = v*i + 1/2*A*i^2;
            t = t + i;
            S = S + x;
            v = v + A;

        end
    end