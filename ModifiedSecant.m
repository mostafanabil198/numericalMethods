function [table, root, time, errorMsg ] = ModifiedSecant( fun,xPrev,delta,numOfIterations,eps,epsType )
%UNTITLED3 Summary of this function goes here
e = exp(1);
syms x;
f(x)=sym(fun);
table=[];
tic;
if eval(f(xPrev))==0
    root = xPrev;
    time = toc;
    return
end
for i=1:numOfIterations
    xNew=xPrev-(delta * xPrev * eval(f(xPrev))) / (eval(f(xPrev+delta*xPrev)) - eval(f(xPrev)));
    if strcmp(epsType,'true')
        error=abs(xNew-xPrev);
    else
        error=(abs(xNew-xPrev)/xNew)*100;
    end
    table=[table;i xPrev (xPrev+delta*xPrev) eval(f(xPrev)) eval(f(xPrev+delta*xPrev)) xNew error];
    if xNew==xPrev || error < eps
        root=xNew;
        time = toc;
        return
    end
    xPrev=xNew;
end
if i>=numOfIterations
    errorMsg = 'root not found to desired tolerance'
end
root=xPrev;
time = toc;
return;
end
