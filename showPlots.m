function [] = showPlots(fun, table, i, x0 )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
syms x;
f(x)=sym(fun);
figure;
clf;
    grid on;
    ezplot(f(x),[x0-5:0.1:x0+5])
    hold on;
    ylim([-10 10])
    plot([double(table(i,2)) double(table(i,2))],[100 -100])
    plot([100 -100], [0 0])
end

