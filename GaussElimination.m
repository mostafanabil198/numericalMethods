function [ x, time, errorMsg ] = GaussElimination( eqns )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[a,b]=equationsToMatrix(eqns);
n=length(eqns);
for k=1:n-1
    for i=k+1:n
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
end

