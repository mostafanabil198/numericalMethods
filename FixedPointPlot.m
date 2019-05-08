function [ ] = FixedPointPlot( gFun,xr,cf )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
syms x;
f(x)=sym('x');
figure(cf);
clf;
grid on;
ezplot(gFun,[0:0.1:xr+5])
hold on;
ezplot(f(x),[0:0.1:xr+5])
hold on;
ylim([-10 10])
plot([double(xr) double(xr)],[100 -100])
plot([100 -100], [0 0])

end

