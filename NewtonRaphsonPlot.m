function [] = NewtonRaphsonPlot( fun,xr,cf )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
syms x;
f(x)=sym(fun);
fDash(x)=diff(f,x);
slope=fDash(xr);
y=slope*(x-xr)+f(xr);
figure(cf);
clf;
grid on;
ezplot(f(x),[xr-5:0.1:xr+5])
hold on;
ezplot(y,[xr-5:0.1:xr+5])
hold on;
ylim([-10 10])
plot([double(xr) double(xr)],[100 -100])
plot([100 -100], [0 0])
end

