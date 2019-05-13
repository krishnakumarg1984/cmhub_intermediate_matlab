% Task 3
clear all % clear all variables
close all % close all open graphs (if any)


% 1
% define the coefficients of the polynomial
cn = [-1 5 2 -7];
[sol] = roots(cn)


% plot the polynomial to inspect visually about the roots
x = [-10:0.001:10];
% evaluate the polynomial at points x
y = polyval(cn,x);

plot(x,y)
grid on


% 2
[sol] = fzero(@myfunc,5)

% plot the function
x = [0:0.01:10];
y = myfunc(x);
figure
plot(x,y)
grid on


% a few more zeros
% [sol] = fzero(@myfunc,4)
% [sol] = fzero(@myfunc,4.3)
% [sol] = fzero(@myfunc,4.7)
% [sol] = fzero(@myfunc,5.58)
% ... and more


