function [ x,time,errorMsg,table ] = GaussSeidel( eqns,initials,numOfIterations,eps,epsType )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[a,b]=equationsToMatrix(eqns);
n=length(eqns);
x=initials;
table=[];
if a(1,1)>=a(1,2)+a(1,3)
    if a(2,2)>= a(2,1)+a(2,3)
        if a(3,3)>=a(3,1)+a(3,2)
            errorMsg='';
        else
            errorMsg='System diverges';
            return;
        end
    else
        errorMsg='System diverges';
        return;
    end
else
    errorMsg='System diverges';
    return;
end
for k=1:numOfIterations
    xOld=x;
    for i=1:n
        sum=0;
        for j=1:i-1
            sum=sum+a(i,j)*x(1,j);
        end
        for j=i+1:n
            sum=sum+a(i,j)*xOld(1,j);
        end
        x(1,i)=(b(i)-sum)/a(i,i);
    end
    if strcmp(epsType,'true')
        table=[table;k x abs(x-xOld)];
        if abs(x-xOld)<=eps
            return
        end
    else
        table=[table;k x abs(x-xOld/x)*100];
        if abs(x-xOld/x)*100<=eps
            return;
        end
    end
end
end

