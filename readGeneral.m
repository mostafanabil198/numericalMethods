function [ fun, xl, xu, precision, step ] = readGeneral( fileName )
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
    xl = str2double(x(1));
    xu = str2double(x(2));
    precision = str2double(tlines{4});
    step = str2double(tlines{5});
    
    return
end

