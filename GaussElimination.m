function [ x, time, errorMsg ] = GaussElimination( eqns )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
syms a b c d e f g h i j k l m n o p k r s t u v w x y z x0 x1 x2 x3 x4 x5 x6 x7 x8 x9 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 y0 y1 y2 y3 y4 y5 y6 y7 y8 y9;
eqns1 = [];
for i=1:size(eqns(:),1)
    eqns1 = [eqns1,sym(eqns(1,i))]
end
eqns = eqns1;
time=0;
errorMsg=' ';
[a,b]=equationsToMatrix(eqns);
n=length(eqns);
tic;
for k=1:n-1
    for i=k+1:n
        if a(k,k)==0
            errorMsg='Can not divide by zero!';
            time=toc;
            return
        end
        factor=a(i,k)/a(k,k);
        for j=k:n
            a(i,j)=a(i,j)-(factor*a(k,j));
        end
        b(i,1)=b(i,1)-(factor*b(k,1));
    end
end
x=[];
x(n,1)=b(n,1)/a(n,n);
for i=n-1:-1:1
    sum=0;
    for j=i+1:n
        sum=sum+(a(i,j)*x(j,1));
    end
    x(i,1)=(b(i,1)-sum)/a(i,i);
end
time=toc;
end

