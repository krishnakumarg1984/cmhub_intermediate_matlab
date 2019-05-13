% Task 2
clear all % clear all variables
close all % close all open graphs (if any)


% 1
[sol] = mybisection(3.8,6,0.001)

% 2
[sol] = mybisection(3.8,5.5,0.001)

% 3
% plot f(x), to understand where the solution lies
x = [0:0.01:10];
y = myfunc(x);

plot(x,y)
grid on
% 


% 4
y = myfunc(x);
figure
plot(x,y)
grid on
% the solution seems to be between 1 and 3, in fact the true solution is at
% x = 2. However, because the function touches the zero axis, but never
% crosses it, the assumption needed for the bisection method, i.e. 
% f(a) * f(b) < 0, is violated.
[sol] = mybisection(1,2.2,0.001)


% 5
x = [1:0.001:2];
y = myfunc(x);
figure
plot(x,y,'.')
grid on
% Although the assumption needed for the bisection method, i.e. 
% f(a) * f(b) < 0, is valid, there is no root as tan(x) does not cross the
% zero axis in the interval [1,2].
[sol] = mybisection(1,2,0.001)


