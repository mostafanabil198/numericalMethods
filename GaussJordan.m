function [ x, time, errorMsg ] = GaussJordan( eqns )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
errorMsg = 'aa';
tic;
[a,b]=equationsToMatrix(eqns);
n=length(eqns);
for k=1:n
    for i=1:n
        if(i ~= k)
            factor=a(i,k)/a(k,k);
            for j=k:n
                a(i,j)=a(i,j)-(factor*a(k,j));
            end
            b(i,1)=b(i,1)-(factor*b(k,1));
        end
    end
    disp(a)
end
x=[];
for i=1:n
    x(i,1)=b(i,1)/a(i,i);
end
time = toc;
end