function [] = plotAllRoots( bisection,falsePosition,fixedPoint,newtonRaphson,newtonMultiplicity,newtonRaphsonModified,secant,secantModified,birgeVieta,cf)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
figure(cf);
clf;
grid on;
xlabel('Iterations')
ylabel('Roots')
xlim([0 50])
if length(bisection) ~=0
plot(bisection(:,1), bisection(:,4));
hold on;
else
plot([0 0], [0 0]);
hold on;
end
if length(falsePosition) ~=0
plot(falsePosition(:,1), falsePosition(:,4));
hold on;
else
plot([0 0], [0 0]);
hold on;
end
if length(fixedPoint) ~=0
plot(fixedPoint(:,1), fixedPoint(:,3));
hold on;
else
plot([0 0], [0 0]);
hold on;
end
if length(newtonRaphson) ~=0
plot(newtonRaphson(:,1), newtonRaphson(:,3));
hold on;
else
plot([0 0], [0 0]);
hold on;
end
if length(newtonMultiplicity) ~=0
plot(newtonMultiplicity(:,1), newtonMultiplicity(:,3));
hold on;
else
plot([0 0], [0 0]);
hold on;
end
if length(newtonRaphsonModified) ~=0
plot(newtonRaphsonModified(:,1), newtonRaphsonModified(:,3));
hold on;
else
plot([0 0], [0 0]);
hold on;
end
if length(secant)~=0
plot(secant(:,1), secant(:,6));
hold on;
else
plot([0 0], [0 0]);
hold on;
end
if length(secantModified) ~=0
plot(secantModified(:,1), secantModified(:,6));
hold on;
else
plot([0 0], [0 0]);
hold on;
end
if length(birgeVieta) ~=0
plot(birgeVieta(:,1), birgeVieta(:,5));
hold on;
else
plot([0 0], [0 0]);
hold on;
end
legend({'Bisection','False Position','Fixed Point','Newton Raphson','Newton with multiplicty','Modified Newton Raphson','Secant','Modified Secant','Birge Vieta'},'Location','southwest')
end

