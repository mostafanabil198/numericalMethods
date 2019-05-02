function [ table, root, time, errorMsg ] = NewtonRaphsonModified( fun,x0,numOfIterations,eps,epsType )
%Newton Raphson modified method for multiple roots
e=exp(1);
root = 0;
time = 0;
errorMsg = ' ';
syms x;
tic;
f(x)=sym(fun);
fDash(x)=diff(f,x);
fDoubleDash(x)=diff(fDash,x);
xNew=x0;
table=[];
for i=1:numOfIterations
    xPrev=xNew;
    num=(eval(f(xPrev))*eval(fDash(xPrev)));
    denom=(eval(fDash(xPrev)))^2-(eval(f(xPrev))*eval(fDoubleDash(xPrev)));
    if(denom==0)
        errorMsg = 'Can not divide by zero';
        time = toc;
        return;
    end
    xNew=xPrev-(num/denom);
    if strcmp(epsType,'true')
        error=abs(xNew-xPrev);
    else
        error=(abs(xNew-xPrev)/xNew)*100;
    end
    table=[table; i xPrev xNew eval(f(xPrev)) eval(fDash(xPrev)) eval(fDoubleDash(xPrev)) error];
    if xNew==xPrev || error< eps
        root=xNew;
        time = toc;
        return
    end
end
if i>=numOfIterations
    errorMsg = 'root not found to desired tolerance';
end
root=xNew;
time = toc;
return
end

