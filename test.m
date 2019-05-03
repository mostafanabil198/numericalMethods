[ table,root, time, errorMsg ] = Secant('x^2 + x - 5', 1, 3, 10, .00001, 'false');

%write table
 %dlmwrite('m1.txt',table)
 
 WriteToFile(table,root,time,errorMsg,'Secant');

 