% Task 1
clear all % clear all variables
close all % close all open graphs (if any)
% Taks A

% 1
A = dlmread('experiment.txt'); % read the file into a matrix
figure % create a new figure
xexp = A(:,1); % extract the two set of data x and y, from matrix A
yexp = A(:,2);
plot(xexp,yexp,'o');
hold on

% 2
cn1 = polyfit(xexp,yexp,1); % fit the curve with a first order polynomial
cn2 = polyfit(xexp,yexp,2); % fit the curve with a second order polynomial
cn3 = polyfit(xexp,yexp,3); % fit the curve with a third order polynomial

% 3
xf=[1:0.1:10];
% evaluate the polynomials at xf
% p1 = c1*x + c0
p1 = cn1(1)*xf + cn1(2);
% p2 = c2*x^2+ c1*x +c0
p2 = cn2(1)*xf.^2 + cn2(2)*xf + cn2(3); 
% p3 = c3*x^3 + c2*x^2+ c1*x +c0
p3 = cn3(1)*xf.^3 + cn3(2)*xf.^2 + cn3(3)*xf + cn3(4); 
% 
% you can evaluate the polynomials by using the polival function instead
p1 = polyval(cn1,xf);
p2 = polyval(cn2,xf);
p3 = polyval(cn3,xf);

plot(xf,p1,'b',xf,p2,'r',xf,p3,'g')
legend({'data' 'first' , 'second', 'third'});
grid on

