function [] = plotAllErrors(  bisection,falsePosition,fixedPoint,newtonRaphson,newtonMultiplicity,newtonRaphsonModified,secant,secantModified,birgeVieta,cf)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
figure(cf);
clf;
grid on;
xlabel('Iterations')
ylabel('Errors')
ylim([0 50])
plot(bisection(:,1), bisection(:,6));
hold on;
plot(falsePosition(:,1), falsePosition(:,6));
hold on;
plot(fixedPoint(:,1), fixedPoint(:,4));
hold on;
plot(newtonRaphson(:,1), newtonRaphson(:,6));
hold on;
plot(newtonMultiplicity(:,1), newtonMultiplicity(:,6));
hold on;
plot(newtonRaphsonModified(:,1), newtonRaphsonModified(:,7));
hold on;
plot(secant(:,1), secant(:,7));
hold on;
plot(secantModified(:,1), secantModified(:,7));
plot(birgeVieta(:,1), birgeVieta(:,6));
hold on;
legend({'Bisection','False Position','Fixed Point','Newton Raphson','Newton with multiplicty','Modified Newton Raphson','Secant','Modified Secant','Birge Vieta'},'Location','southwest')
end

