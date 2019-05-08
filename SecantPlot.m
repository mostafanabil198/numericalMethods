function [] = SecantPlot( fun,table,i,cf )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
syms x;
f(x)=sym(fun);
figure(cf);
clf;
grid on;
if length(table)~=0
    xPrev1=double(table(i,2));
    xPrev=double(table(i,3));
    xr=double(table(i,6));
    fxPrev1=f(xPrev1);
    fxPrev=f(xPrev);
    fxr=f(xr);
    ezplot(f(x),[xr-5:0.1:xr+5])
    hold on;
    ylim([-10 10])
    plot([double(xr) double(xPrev1)],[double(0) double(fxPrev1)])
    plot([double(xr) double(xPrev)],[double(0) double(fxPrev)])
    plot([100 -100], [0 0])
    plot([xr xr],[f(xr) 0])
else
    ezplot(f(x),[0:0.1:10])
end
end

