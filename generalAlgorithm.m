function [roots,time] = generalAlgorithm(fe,xl,xu,precision, interval)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
e = exp(1);
syms x
f(x)=sym(fe);
tic;
    start = xl ;
    distance = interval;
    endPoint = xu;
    roots = [];
    while (start < endPoint)
       nextPoint = start + distance;
       root = Brent(f,start , nextPoint)
       froot = eval(f(root))
       if (abs(froot) < precision)
          m = checkMultiplicity(f,root,precision)
          roots = [roots; root m]
        start = nextPoint + distance;
       elseif(precision > 10^-3)
          start = nextPoint + 10^-3;
       else
          start = nextPoint + precision;
       end
    end
    time=toc;
end