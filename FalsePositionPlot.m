function [] = FalsePositionPlot( fun,table,i,cf )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
e = exp(1);
syms x;
f(x)=sym(fun);
figure(cf);
clf;
grid on;
if length(table) ~=0
    xl=double(table(i,2));
    xu=double(table(i,3));
    xr=double(table(i,4));
    fxl=f(xl);
    fxu=f(xu);
    ezplot(f(x),[xl-1:0.1:xu+1])
    hold on;
    ylim([-10 10])
    plot([double(xr) double(xr)],[100 -100])
    plot([double(xl) double(xu)],[double(fxl) double(fxu)])
    plot([100 -100], [0 0])
else
    ezplot(f(x),[0:0.1:10])
end
end

