function [ table ] = FalsePosition( fun,xl,xu,numOfIterations,eps,epsType )
%UNTITLED2 Summary of this function goes here
e = exp(1);
syms x;
f(x)=sym(fun);
table=[];
xOld=0;
if xl==xu
    fprintf('Can not divide by zero')
    return
end
for i=1:numOfIterations
    xr=(xl*eval(f(xu))-xu*eval(f(xl)))/(eval(f(xu))-eval(f(xl)));
    if strcmp(epsType,'true')
        error=abs(xr-xOld);
    else
        error=(abs(xr-xOld)/xr)*100;
    end
    table=[table; i xr xl xu eval(f(xr)) error];
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

