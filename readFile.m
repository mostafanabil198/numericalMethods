function [ fun, method, interval, numOfIterations, eps, epsType  ] = readFile( fileName )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    isaninteger = @(x) ~isinf(x) & floor(x) == x;
    eps = 0.00001;
    epsType = 'false';
    numOfIterations = 50;
    
    fid=fopen(fileName, 'r');
    tline = fgetl(fid);
    tlines = cell(0,1);
    while ischar(tline)
        tlines{end+1,1} = tline;
        tline = fgetl(fid);
    end
    fclose(fid);
    
    fun = tlines{1};
    method = tlines{2};
    
    x = strsplit(tlines{3});
    if(size(x(:),1) == 1)
        interval = [str2double(x(1))];
    else
        interval = [str2double(x(1)) ,str2double(x(2))];
    end
    %size(interval(:),1)
    itrOrEps = str2double(tlines{4});
    if(floor(itrOrEps) == itrOrEps)
       itr = itrOrEps;
    else
        eps = itrOrEps;
    end

    return

end

