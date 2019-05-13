% Task 3
clear all % clear all variables
close all % close all open graphs (if any)

% define a palette (this will help to choose 
% different colours when plotting
palette = 'bgrcmykbgrcmykbgrcmyk';

% 2
A = dlmread('wave.txt'); % read the file into a matrix
xexp = A(:,1)'; % extract the two set of data x and y, from matrix A
yexp = A(:,2)';

% create and plot in subplot 1
subplot(2,1,1)
plot(xexp,yexp,'o');
hold on
leg(1) = {'data'};
grid on

% for every order of fitting
for i = 1 : 8
  [p, Err(i)] = mypolyfit(xexp,yexp,i);
  plot(xexp,p,palette(i));
  leg(i+1) = {num2str(i)}; % build the legend 
end
% show the legend
legend(leg)

% plot in subplot 2
subplot(2,1,2)
order = [1:8];
plot(order,Err(1:8),'o')
grid on
xlabel('order')
ylabel('Error')

% The set of data points resembles a sine wave.
% Polynomial fitting is equivalent to a truncated Taylor expansion.
% The Taylor expansion for sin(x) is made only of odd terms.
% Adding the subsequent even term in the fitting, produces only a zero
% coefficient, and hence no contribution to the polynomial.
