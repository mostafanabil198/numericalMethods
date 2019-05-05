function [] = WriteToFile(table, root, time, errorMsg, method)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

if strcmp(method,'Bisection') || strcmp(method,'FalsePosition')
    header={'iteration', 'xr', 'xl', 'xu', 'f(xr)', 'error'};
elseif strcmp(method,'BirgeVieta')
    header={'iteration', 'xPrev', 'fun(Xi)', 'fun`(Xi)', 'xNew', 'error'};
elseif strcmp(method,'FixedPoint')
      header={'iteration', 'xPrev','xNew', 'error'};
elseif strcmp(method,'ModifiedSecant')
    header={'iteration', 'Xi', 'Xi+&Xi', 'f(Xi)', 'fun(Xi+&Xi)', 'Xi+1', 'error'};
elseif strcmp(method,'NewtonRaphson')
    header={'iteration', 'Xi', 'Xi+1', 'f(Xi)', 'fun`(Xi)', 'error'};
elseif strcmp(method,'NewtonRaphsonModified')
    header={'iteration', 'Xi', 'Xi+1', 'f(Xi)', 'fun`(Xi)', 'f(Xi)``', 'error'};
elseif strcmp(method,'NewtonRaphsonMultiplicity')
    header={'iteration', 'Xi', 'Xi+1', 'f(Xi)', 'fun`(Xi)', 'error'};
elseif strcmp(method,'Secant')
    header={'iteration', 'Xi', 'Xi-1', 'f(Xi)', 'fun(Xi-1)','Xi+1', 'error'};
end

xlswrite('iterations.xls',header,1,'1A');
xlswrite('iterations.xls',table,1,'2A');


fileID = fopen('results.txt', 'w');

fprintf(fileID,'RESULTS OF %s \r\n', method);
fprintf(fileID,'root=%6.2f \r\ntime=%12.8f \r\nerrorMsg: %s', root, time,errorMsg);
fclose(fileID);

end
