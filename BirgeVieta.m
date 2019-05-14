function [ table, root, time, errorMsg ] = BirgeVieta( fun,x0,numOfIterations,eps,epsType )
syms x;
    %initialize outputs
root = 0;
time = 0;
errorMsg = ' ';

f(x)=sym(fun);
xNew=x0;
table=[];
tic;
    %try to convert the equation to polynomial function if that throw error
    %then it's not a polynomial function
try 
    a = sym2poly(f);
catch
   errorMsg = 'not a polynomial function';
   time = toc;
   return;
end

b=[];
c=[];
    %ith is variable that holds orders of equation desc. ex-> 4 3 2 1 if
    %the equation of the 4th order
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
    bN = a(1,y)+xNew*b(1,y-1);
    b=[b,bN];
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
  %if it exceeded the error bound
     if error < eps || abs(b(size(b(:),1))) < 1e-6
        root=xNew;
        time = toc;
        return
    end
end
  %if it finished the iterations and didnt find a root
if i>=numOfIterations
    errorMsg = 'root not found to desired tolerance';
end
root=xNew;
time = toc;
return

end

