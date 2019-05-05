function [] = SecantPlot( fun, xPrev1,xprev,xr )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
syms x;
f(x)=sym(fun);
fxPrev1=f(xPrev1);
fxPrev=f(xPrev);
fxr=f(xr);
figure;
clf;
grid on;
ezplot(f(x),[xr-5:0.1:xr+5])
hold on;
ylim([-10 10])
plot([double(xr) double(xPrev1)],[double(0) double(fxPrev1)])
plot([double(xr) double(xPrev)],[double(0) double(fxPrev)])
plot([100 -100], [0 0])
plot([xr xr],[f(xr) 0])

end

