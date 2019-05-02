function [ table, root ] = BirgeVieta( fun,x0,numOfIterations,eps,epsType )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
e=exp(1);
syms x;
f(x)=sym(fun);
xNew=x0;
table=[];
a = sym2poly(f)
b=[];
c=[];
ith = [size(a(:))-1:-1:0];

for i=1:numOfIterations
    b = [];
    c = [];
  for y=1:size(a(:),1)
    if y == 1 
        b = a(1,1);
        c = a(1,1);
        continue;
    end 
    bN = a(1,y)+xNew*b(1,y-1)
    b=[b,bN]
    if y ~= size(a(:),1)
        cN = b(1,y)+xNew*c(1,y-1);
        c=[c,cN];
    end
  end
  xPrev = xNew;
  xNew = xPrev-b(size(b(:),1))/c(size(c(:),1));
    if strcmp(epsType,'true')
        error=abs(xNew-xPrev);
    else
        error=(abs((xNew-xPrev)/xNew))*100;
    end
    fun = b(size(b(:),1));
    funD = c(size(c(:),1));
  table=[table;i xPrev fun funD xNew error];
     if error< eps || b(size(b(:),1)) == 0
        root=xNew;
        return
    end
  end
if i>=numOfIterations
    fprintf('root not found to desired tolerance');
end
root=xNew;
return

end

