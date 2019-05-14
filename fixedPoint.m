function [ table, root, time, note, errorMsg, g, gDash] = FixedPoint( fun, x0,numOfIterations,eps,epsType )
    %to handle if the function contains e
e = exp(1);
    %initialze the function's output
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

    %try to find the best g(x) that will converge and if many function will
    %converge then the fastest one
    %if all g(x) will diverge then it will take any one
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
gggg = g(x);
ggggD = gDash(x);
ggggD1 = diff(g,x);
min;

table=[];
xNew=x0;
tic;
    %method will converge
if(abs(eval(gDash(x0)))<1)
    if(eval(gDash(x0))>0)
        note = 'Method converges monotonically';
    else
        note = 'Method converges with oscillation';
    end
    %method will diverge
else
    if(eval(gDash(x0))>0)
        note = 'Method diverges monotonically';
    else
        note = 'Method diverges with oscillation';
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
    %exceeded the error bound
    if xNew==xPrev || error<= eps
        root=xNew;
        time = toc;
        return
    end
end
%exceeded number of iterations with no roots
if i>=numOfIterations
    errorMsg = 'root not found to desired tolerance';
end
root=xNew;
time = toc;
return
end
