function [table, root, time, errorMsg] = NewtonRaphson( fun,x0,numOfIterations,eps,epsType )
%Newton Raphson method for calculating roots of equation
e=exp(1);
syms x;
root = 0;
time = 0;
errorMsg = ' ';
f(x)=sym(fun);
fDash(x)=diff(f,x);
xNew=x0;
table=[];
tic;
for i=1:numOfIterations
    xPrev=xNew;
    if(eval(fDash(xPrev))==0)
        errorMsg = 'Can not divide by zero';
        time = toc;
        return;
    end
    xNew=xPrev-(eval(f(xPrev))/eval(fDash(xPrev)));
    if strcmp(epsType,'true')
        error=abs(xNew-xPrev);
    else
        error=(abs(xNew-xPrev)/xNew)*100;
    end
    table=[table; i xPrev xNew eval(f(xPrev)) eval(fDash(xPrev)) error];
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

