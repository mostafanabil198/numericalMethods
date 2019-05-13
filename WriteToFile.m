function [] = WriteToFile(table, root, time, errorMsg, method)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
header = {};
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
elseif strcmp(method,'GaussSeidel')
    header={'iteration'};
    numX = (size(table(:),1)-1)/2;
    for i=2:(size(table(:),1)-1)
        if i == numX
            header{1,i} = strcat('E',(i/2)-1);
        else
            header{1,i} = strcat('X',i-1);
        end
    end
end

if exist('iterations.xls', 'file');
  delete('iterations.xls');
end
if(~(strcmp(method,'gauss') || strcmp(method,'jordon') || strcmp(method,'lu')))
    try
    xlswrite('iterations.xls',header,1,'1A');
    xlswrite('iterations.xls',table,1,'2A');
    catch er
        disp('error fl files');
    end
end

fileID = fopen('results.txt', 'w');

fprintf(fileID,'RESULTS OF %s \r\n', method);

if(strcmp(method,'gauss') || strcmp(method,'jordon') || strcmp(method,'lu'))
    for i=1:size(root(:),1)
        fprintf(fileID,'root %d = %6.2f \r\n', i, root(i))
    end
    fprintf(fileID,'\r\ntime=%12.8f \r\nerrorMsg: %s', time,errorMsg);
else
    fprintf(fileID,'root=%.12f \r\ntime=%.12f \r\nerrorMsg: %s', root, time,errorMsg);
end
fclose(fileID);

end
