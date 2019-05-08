function [] = FalsePositionPlot( fun,xl,xu,xr,cf )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
syms x;
f(x)=sym(fun);
fxl=f(xl);
fxu=f(xu);
figure(cf);
clf;
grid on;
ezplot(f(x),[xl-1:0.1:xu+1])
hold on;
ylim([-10 10])
plot([double(xr) double(xr)],[100 -100])
plot([double(xl) double(xu)],[double(fxl) double(fxu)])
plot([100 -100], [0 0])

end

