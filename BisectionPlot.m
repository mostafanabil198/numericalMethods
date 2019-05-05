function [ ] = BisectionPlot( fun,xl,xu,xr )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
syms x;
f(x)=sym(fun);
figure;
clf;
grid on;
ezplot(f(x),[xl-1:0.1:xu+1])
hold on;
ylim([-10 10])
plot([double(xr) double(xr)],[100 -100])
plot([double(xl) double(xl)],[100 -100])
plot([double(xu) double(xu)],[100 -100])
plot([100 -100], [0 0])

end

