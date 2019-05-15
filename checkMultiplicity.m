    
function [m]= checkMultiplicity(f,root,precision)
    syms x;
    der = diff(f, x);
    m = 1;
    while der ~= 0
        val = vpa(subs(der,root));
        disp(der);
        if abs(val) < precision
            m = m+1
            der = diff(der,x)
        else
            break;
        end
    end
end