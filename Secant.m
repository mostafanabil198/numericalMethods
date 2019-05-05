function [ table,root, time, errorMsg ] = Secant(fun,xPrev,xPrev1,numOfIterations,eps,epsType )
%UNTITLED3 Summary of this function goes here
e = exp(1);
root = 0;
time = 0;
errorMsg = ' ';
syms x;
f(x)=sym(fun);
table=[];
tic;
if xPrev==xPrev1
    errorMsg = 'Can not divide by zero';
    time = toc;
    return
end
for i=1:numOfIterations
    xNew=xPrev-eval(f(xPrev))*(xPrev-xPrev1)/(eval(f(xPrev))-eval(f(xPrev1)));
    if strcmp(epsType,'true')
        error=abs(xNew-xPrev);
    else
        error=(abs(xNew-xPrev)/xNew)*100;
    end
    table=[table;i xPrev xPrev1 eval(f(xPrev)) eval(f(xPrev1)) xNew error];
    if error< eps
        root=xNew;
        time = toc;
        return
    end
    xPrev1=xPrev;
    xPrev=xNew;
end
if i>=numOfIterations
    errorMsg = 'root not found to desired tolerance';
end
root=xNew;
time = toc;
return;
end

