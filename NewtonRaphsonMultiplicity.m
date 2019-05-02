function [ table ] = NewtonRaphsonMultiplicity( fun,x0,numOfIterations,eps,epsType,m )
%Newton Raphson method with multiplicity for calculating roots of equation
e=exp(1);
syms x;
f(x)=sym(fun);
fDash(x)=diff(f,x);
xNew=x0;
table=[];
for i=1:numOfIterations
    xPrev=xNew;
    if(eval(fDash(xPrev))==0)
        fprintf('Can not divide by zero')
        return;
    end
    xNew=xPrev-m*(eval(f(xPrev))/eval(fDash(xPrev)));
    if strcmp(epsType,'true')
        error=abs(xNew-xPrev);
    else
        error=(abs(xNew-xPrev)/xNew)*100;
    end
    table=[table; i xPrev xNew eval(f(xPrev)) eval(fDash(xPrev)) error];
    if xNew==xPrev || error< eps
        root=xNew;
        return
    end
end
if i>=numOfIterations
    fprintf('root not found to desired tolerance');
end
root=xNew;
return
end

