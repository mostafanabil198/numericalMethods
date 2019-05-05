function [ x, time, errorMsg ] = LUMatrix( eqns )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
syms a b c d e f g h i j k l m n o p k r s t u v w x y z x0 x1 x2 x3 x4 x5 x6 x7 x8 x9 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 y0 y1 y2 y3 y4 y5 y6 y7 y8 y9;
eqns1 = [];
for i=1:size(eqns(:),1)
    eqns1 = [eqns1,sym(eqns(1,i))]
end
eqns = eqns1;
time=0;
errorMsg=' ';
x=[];
[a,b]=equationsToMatrix(eqns);
n = size(a, 1)
lu = a;
tic;
for i = 1 : n - 1
    for j = i + 1 : n
        if (lu(i,i) == 0)
            errorMsg='Singular Matrix';
            time=toc;
            return;
        end    
        factor = lu(j,i) / lu(i,i);
        lu(j,i:n) = lu(j,i:n) - factor .* lu(i,i:n);
        lu(j,i) = factor;
    end
end
y = zeros(n, 1);
% L Y = B
y(1) = b(1);
for i = 2 : n
    y(i) = b(i);
    for j = 1 : i - 1
        y(i) = y(i) - lu(i,j) *  y(j);
    end
end
% U X = Y
x(n,1) = y(n) / lu(n,n);
i = n - 1;
while (i > 0)
    x(i,1) = y(i);
    for j = i + 1 : n
        x(i,1) = x(i,1) - lu(i,j) * x(j,1);
    end
    if (lu(i,i) == 0)
        errorMsg='Error: division by zero';
        time=toc;
       return;
    end    
    x(i,1) = x(i,1) / lu(i,i);
    i = i - 1;
end
time=toc;
x
return;


end

