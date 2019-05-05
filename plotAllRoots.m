function [] = plotAllRoots( bisection,falsePosition,fixedPoint,newtonRaphson,newtonRaphsonModified,secant,secantModified)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
figure;
clf;
grid on;
xlabel('Iterations')
ylabel('Roots')
ylim([0 50])
plot(bisection(:,1), bisection(:,4));
hold on;
plot(falsePosition(:,1), falsePosition(:,4));
hold on;
plot(fixedPoint(:,1), fixedPoint(:,3));
hold on;
plot(newtonRaphson(:,1), newtonRaphson(:,3));
hold on;
plot(newtonRaphsonModified(:,1), newtonRaphsonModified(:,3));
hold on;
plot(secant(:,1), secant(:,6));
hold on;
plot(secantModified(:,1), secantModified(:,6));
legend({'Bisection','False Position','Fixed Point','Newton Raphson','Modified Newton Raphson','Secant','Modified Secant'},'Location','southwest')
end

