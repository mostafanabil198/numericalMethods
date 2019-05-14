function [table, root, time, errorMsg] = NewtonRaphson( fun,x0,numOfIterations,eps,epsType )
%Newton Raphson method for calculating roots of equation

    %to handle if the function contains e
e=exp(1);
syms x;
    %initialze the function's output
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
    % if f'(x) = 0 
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
        %exceeded the error bound
    if xNew==xPrev || error< eps
        root=xNew;
        time = toc;
        return
    end
end
    %exceeded number of iterations with no roots
if i>=numOfIterations
    errorMsg = 'root not found to desired tolerance';
end
root=xNew;
time = toc;
return
end

