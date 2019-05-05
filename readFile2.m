function [ fun, method, interval, numOfIterations, eps, epsType  ] = readFile2( fileName )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    eps = 0.00001;
    epsType = 'false';
    numOfIterations = 50;
    fid=fopen(fileName, 'r');
    tline = fgetl(fid);
    tlines = cell(0,1);
    interval = [];
    while ischar(tline)
        tlines{end+1,1} = tline;
        tline = fgetl(fid);
    end
    fclose(fid);
    numEquations = str2double(tlines{1});
    fun = [];
    for i=2:(1+numEquations)
        fun = [fun,sym(tlines{i})];
    end
    method = tlines{numEquations+2};
    if(size(tlines(:),1) > numEquations + 2)
        x = strsplit(tlines{numEquations + 3});
        for i = 1:size(x(:),1)
            interval = [interval,str2double(x(i))];
        end
    end
    return

end

