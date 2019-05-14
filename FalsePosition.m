function [ table, root, time, errorMsg] = FalsePosition( fun,xl,xu,numOfIterations,eps,epsType )
    %e to handle if the function contains e^x
e = exp(1);
syms x;
root = 0;
time = 0;
errorMsg = ' ';
f(x)=sym(fun);
table=[];
xOld=0;
tic;
    %if the lower and upper bounds are equal then error because we cant
    %divide by zero
if xl==xu
    errorMsg = 'Can not divide by zero';
    time = toc;
    return
end
    %iterate until you find the root or exceed the iterations number
for i=1:numOfIterations
    xr=(xl*eval(f(xu))-xu*eval(f(xl)))/(eval(f(xu))-eval(f(xl)));
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
    %if exceeded the error bound
    if error<= eps
        root=xr;
        time = toc;
        return
    end
    xOld=xr;
end
if i>=numOfIterations
    errorMsg='root not found to desired tolerance';
end
root=xr;
time = toc;
return;
end

