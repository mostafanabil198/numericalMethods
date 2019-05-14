function [ table, root, time, errorMsg, theoretical] = Bisection( fun,xl,xu,numOfIterations,eps, epsType )
    %to handle e as input in the equation
e = exp(1);
    %initialize output
root = 0;
time = 0;
errorMsg = ' ';
    %calculate number of iterations theoretically
theoretical=0;

syms x;
f(x)=sym(fun);
table=[];
xOld=0;
tic;
    %if the interval has no roots in the interval
if eval(f(xl))*eval(f(xu))>0
    errorMsg = 'root does not exist in this interval';
    time = toc;
    return
end

    %if one of xl and xu is root
if eval(f(xl))*eval(f(xu))==0
    if eval(f(xl))==0
        xr=xl;
        root=xr;
        table=[table;1 xl xu xr eval(f(xr)) 0];
        time = toc;
        return
    else
        xr=xu;
        root=xr;
        table=[table;1 xl xu xr eval(f(xr)) 0];
        time = toc;
        return
    end
end
    %calulate number of iterations theoretically
theoretical= ceil(abs(log2(abs(xl-xu))-log2(eps)))

    %loop until we find the root by getting the xr as (xl+xu)/2
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
    %if exceeded the error bound
    if error<= eps
        root=xr;
        time = toc;
        return
    end
    xOld=xr;
end
    %exceeded number of iterations and didint return so there was no root
    %within the iteration number
if i>=numOfIterations
    errorMsg = 'root not found to desired tolerance';
end
root=xr;
time = toc;
return;
end

