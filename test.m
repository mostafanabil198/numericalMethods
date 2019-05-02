equa = '4*x^2 + e^x + 3*x';
syms x;
f(x)=sym('4*x^2 + x^5 - 3*x^4 - x^1 + 10');
e = exp(1);
a = sym2poly(f)
i = [size(a(:)):-1:0]
b = [a(1,1)]
b = [b,5]
terms = children(f);


%c = sym2poly(terms(3))

%fCoeff=matlabFunction(f);
%fCoeff=sym(fCoeff)
%c=sym2poly(fCoeff)
%for j=1:length(t)
 %   if (t(i)=='x')
 %   coefficient= c(i)
%end