function [] = plotAllErrors(  bisection,falsePosition,fixedPoint,newtonRaphson,newtonRaphsonModified,secant,secantModified)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
figure;
grid on;
ylim([-10 10])
plot(bisection(:,1), bisection(:,6));
hold on;
plot(falsePosition(:,1), falsePosition(:,6));
hold on;
plot(fixedPoint(:,1), fixedPoint(:,4));
hold on;
plot(newtonRaphson(:,1), newtonRaphson(:,6));
hold on;
plot(newtonRaphsonModified(:,1), newtonRaphsonModified(:,7));
hold on;
plot(secant(:,1), secant(:,7));
hold on;
plot(secantModified(:,1), secantModified(:,7));
end

