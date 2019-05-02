function [ table ] = Bisection( fun,xl,xu,numOfIterations,eps, epsType )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
e = exp(1);
syms x;
f(x)=sym(fun);
table=[];
xOld=0;
if eval(f(xl))*eval(f(xu))>0
    fprintf('root does not exist in this interval')
    return
end
if eval(f(xl))*eval(f(xu))==0
    if eval(f(xl))==0
        xr=xl;
        root=xr;
        table=[table;1 xl xu xr eval(f(xr)) 0];
        return
    else
        xr=xu;
        root=xr;
        table=[table;1 xl xu xr eval(f(xr)) 0];
        return
    end
end
for i=1:numOfIterations
    xr = (xl + xu)/2;
    if strcmp(epsType,'true')
        error=abs(xr-xOld);
    else
        error=(abs(xr-xOld)/xr)*100;
    end
    table=[table; i xl xu xr eval(f(xr)) error];
    if eval(f(xr))*eval(f(xl))>0
        xl=xr;
    else
        xu=xr;
    end
    if error<= eps
        root=xr;
        return
    end
    xOld=xr;
end
if i>=numOfIterations
    fprintf('root not found to desired tolerance');
end
root=xr;
end

