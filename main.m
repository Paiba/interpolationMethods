clear all;
clc;
more off;


ntudo = 3;
atudo = 1;
btudo = 4;

x1 = [1,2,3,4];
y1 = [3,6,11,18];
f1 = @(x) power(x,2)+2;
I1 = @(x) power(x,3)/3 + 2*x;
Ia1= 27;


Vinter1 = vandermonde(x1,y1);
Splines1 = 0;

Itr1 = trapezio(f1,ntudo,atudo,btudo);
Isr1 = simpson(f1,ntudo,atudo,btudo);

disp("f1(x) = x²+2\n\n")
fprintf('%15s | %15s | %15s \n','Analitica', 'Trapezio', 'Simpson');
fprintf('%15.2f | %15.2f | %15.2f \n',Ia1, Itr1, Isr1);
fprintf('\n\n\n\n\n');



x2 = [1,2,3,4];
y2 = [3,10,21,36];
f2 = @(x) 2*power(x,2)+x;
I2 = @(x) 2*power(x,3)/3+power(x,2)/2;
Ia2=49.5;


Vinter2 = vandermonde(x2,y2);
Splines2 = 0;

Itr2 = trapezio(f2,ntudo,atudo,btudo);
Isr2 = simpson(f2,ntudo,atudo,btudo);

disp("f(x) = 2x²+x\n\n")
fprintf('%15s | %15s | %15s \n','Analitica', 'Trapezio', 'Simpson');
fprintf('%15.2f | %15.2f | %15.2f \n',Ia2, Itr2, Isr2);
fprintf('\n\n\n\n\n');

x3 = [1,2,3,4];
y3 = [-1,1,5,11];
f3 = @(x) power(x,2)-x-1;
I3 = @(x) power(x,3)/3 - power(x,2)/2 -x;
Ia3 =10.5;


Vinter3 = vandermonde(x3,y3);
Splines3 = 0;

Itr3 = trapezio(f3,ntudo,atudo,btudo);
Isr3 = simpson(f3,ntudo,atudo,btudo);


disp("f(x) = x²-x-1\n\n")
fprintf('%15s | %15s | %15s \n','Analitica', 'Trapezio', 'Simpson');
fprintf('%15.2f | %15.2f | %15.2f \n',Ia3, Itr3, Isr3);
fprintf('\n\n\n\n\n');
