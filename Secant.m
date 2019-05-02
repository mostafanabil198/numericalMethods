function [ table,root ] = Secant(fun,xPrev,xPrev1,numOfIterations,eps,epsType )
%UNTITLED3 Summary of this function goes here
e = exp(1);
syms x;
f(x)=sym(fun);
table=[];
if xPrev==xPrev1
    fprintf('Can not divide by zero')
    return
end
for i=1:numOfIterations
    xNew=xPrev-eval(f(xPrev))*(xPrev-xPrev1)/(eval(f(xPrev))-eval(f(xPrev1)));
    if strcmp(epsType,'true')
        error=abs(xNew-xPrev);
    else
        error=(abs(xNew-xPrev)/xNew)*100;
    end
    table=[table;i xPrev1 xPrev eval(f(xPrev1)) eval(f(xPrev)) xNew error];
    if error< eps
        root=xNew;
        return
    end
    xPrev1=xPrev;
    xPrev=xNew;
end
if i>=numOfIterations
    fprintf('root not found to desired tolerance');
end
root=xNew;
end

