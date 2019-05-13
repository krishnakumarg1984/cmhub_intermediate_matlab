% Task 1
clear all % clear all variables
close all % close all open graphs (if any)

% 1
% plot f(x) first, to understand where the solution lies
x = [-1:0.01:10];
y = myfunc(x);

plot(x,y)
grid on


% it seems that the solution lies between 0 and 4


% find the root with tol = 0.1
%[sol] = mybisection(2,8,0.001)

% find the root with tol = 0.01
%[sol] = mybisection(0,4,0.01)

% find the root with tol = 0.001
[sol] = mybisection(3,8,0.001)

