

fid=fopen('m.txt');
tline = fgetl(fid);
tlines = cell(0,1);
while ischar(tline)
    tlines{end+1,1} = tline;
    tline = fgetl(fid);
end
isaninteger = @(x) ~isinf(x) & floor(x) == x;
syms x;
f(x) = sym(tlines{1});
method = tlines{2};
interval = tlines{3};
itrOrEps = str2double(tlines{4});
if(floor(itrOrEps) == itrOrEps)
   itr = itrOrEps
else
    eps = itrOrEps
end

fclose(fid);