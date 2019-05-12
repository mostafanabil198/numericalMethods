function [ table, root, time, note, errorMsg, g, gDash] = FixedPoint( fun, x0,numOfIterations,eps,epsType )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
e = exp(1);
root = 0;
time = 0;
note = ' ';
errorMsg = ' ';
syms x;
f(x)=sym(fun);
min = Inf;
terms = children(f);
g(x) = x;
gDash(x) = x;
for i=1:size(terms(:))
    f1 = f;
    try
        termCoeffs = sym2poly(terms(i));
        termPower = size(termCoeffs(:)) - 1;
        if termPower(1) ~= 0
            f1 = f1 - termCoeffs(1)*x^termPower(1);
            tempG = f1/termCoeffs(1)*(-1);
            tempG = tempG^(1/termPower(1))
            tempGDash = diff(tempG,x);
            diffResult= eval(tempGDash(x0));
            if(abs(diffResult) < min)
                g(x) = tempG
                gDash(x) = tempGDash;
                min = diffResult;
            end
        end
    catch
    end
end
gggg = g(x)
ggggD = gDash(x)
ggggD1 = diff(g,x)
min;

table=[];
xNew=x0;
tic;
if(abs(eval(gDash(x0)))<1)
    if(eval(gDash(x0))>0)
        note = 'Method converges monotonically';
    else
        note = 'Method converges with oscillation';
    end
else
    if(eval(gDash(x0))>0)
        note = 'Method diverges monotonically';
        %return
    else
        note = 'Method diverges with oscillation';
        %return
    end
end
for i=1:numOfIterations
    xPrev=xNew
    xNew=eval(g(xPrev));
    if strcmp(epsType,'true')
         error=abs(xNew-xPrev);
     else
         error=(abs(xNew-xPrev)/xNew)*100;
     end
    table=[table; i xPrev xNew error];
    if xNew==xPrev || error<= eps
        root=xNew;
        time = toc;
        return
    end
end
if i>=numOfIterations
    errorMsg = 'root not found to desired tolerance';
end
root=xNew;
time = toc;
return
end
