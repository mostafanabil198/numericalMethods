function [ anstable,time,errorMsg,table ] = GaussSeidel( eqns,initials,numOfIterations,eps,epsType )
syms a b c d e f g h i j k l m n o p k r s t u v w y z x0 x1 x2 x3 x4 x5 x6 x7 x8 x9 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 y0 y1 y2 y3 y4 y5 y6 y7 y8 y9;
eqns1 = [];
time = 0 ;
anstable=[];
for i=1:size(eqns(:),1)
    eqns1 = [eqns1,sym(eqns(1,i))]
end
eqns = eqns1;
[a,b]=equationsToMatrix(eqns);
n=length(eqns)
%for z=1:length(initials)
%  x(z,1)=initials(1,z);
%end

nnn=cell2mat(initials);
x = [];
for i=1:length(nnn)
    x = [x,str2num(nnn(1,i))];
end
length(x)
class(x)
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
tic;
for k=1:numOfIterations
    xOld=x;
    length(xOld)
    for i=1:n
        sum=0;
        for j=1:i-1
            sum=sum+a(i,j)*x(1,j);
        end
        for j=i+1:n
            sum=sum+a(i,j)*xOld(1,j);
        end
        if a(i,i)==0
            errorMsg='Can not divide by zero'
            return
        end
        sssssss = size(b)
        b
        class(b)
        x(1,i)=(b(i,1)-sum)/a(i,i);
    end
    if strcmp(epsType,'true')
        d = x - xOld;
        table=[table;k x abs(d)];
        if abs(x-xOld)<=eps
            time=toc;
            for z=1:length(x)
                anstable(z,1)=x(1,z);
            end
            return
        end
    else
        d1 = x-xOld/x ;
        table=[table;k x abs(d1)*100];
        if abs(x-xOld/x)*100<=eps
            time=toc;
            for z=1:length(x)
                anstable(z,1)=x(1,z);
            end
            return;
        end
    end
    for z=1:length(x)
        anstable(z,1)=x(1,z);
    end
end
end

