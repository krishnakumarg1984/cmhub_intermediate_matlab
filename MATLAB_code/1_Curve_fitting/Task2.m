% Task 2
clear all % clear all variables
close all % close all open graphs (if any)


% preparatory stuff, same as before, but redone here, as I am clearing all
A = dlmread('experiment.txt'); % read teh file into a matrix
xexp = A(:,1)'; % extract the two set of data x and y, from matrix A
yexp = A(:,2)';
cn1 = polyfit(xexp,yexp,1); % fit the curve with a first order polynomial
cn2 = polyfit(xexp,yexp,2); % fit the curve with a second order polynomial
cn3 = polyfit(xexp,yexp,3); % fit the curve with a third order polynomial

% 1
% evaluate the polynomials at the given points
p1 = cn1(1)*xexp + cn1(2);
p2 = cn2(1)*xexp.^2 + cn2(2)*xexp + cn2(3); 
p3 = cn3(1)*xexp.^3 + cn3(2)*xexp.^2 + cn3(3)*xexp + cn3(4);

r1 = yexp - p1; % residual for first order poly fitting
r2 = yexp - p2; % residual for second order poly fitting
r3 = yexp - p3; % residual for third order poly fitting

figure
plot(xexp,r1,'bo',xexp,r2,'rd',xexp,r3,'g*')

% 2
E1 = sum(r1.^2)
E2 = sum(r2.^2)
E3 = sum(r3.^2)

% 3
cn9 = polyfit(xexp,yexp,9); % fit the curve with a ninth order polynomial
xf=[1:0.1:10];
p9 = polyval(cn9,xf); % evaluate the ninth order poly at xf
figure
plot(xexp,yexp,'o',xf,p9,'r');

% 4
p9 = polyval(cn9,xexp); % evaluate the ninth order poly at xexp
r9 = yexp - p9; % residual for third order poly fitting
E9 = sum(r9.^2)


