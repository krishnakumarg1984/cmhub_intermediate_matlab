% Task 4
clear all % clear all variables
close all % close all open graphs (if any)


% 1
% plot the function
x = [0:1:80];
y = myfunc(x);
figure
plot(x,y)
grid on

% use your mybisection
[theta] = mybisection(40,80,0.001)
% use Matlab fzeros
[theta] = fzero(@myfunc,60)
% you should get same results


% 2
% compute the x and y coordinates of the motion
g = 9.81;
vo = 15;
ystart = 1.85;

x = [0:0.5:20];
y = x * tand(theta) - 0.5*x.^2*g/vo^2 ./ ( cosd(theta).^2 ) + ystart;
max(y)
figure
for i = 1 : length (x)
   plot(x(i),y(i),'ro'); 
   grid on
   ylim([0 max(y)]); % we need to fix the limits of the axes
   xlim([0 20]);
   hold on
   pause(0.2) % we need to pause a bit, or the motion will be too fast for 
              % our eyes to follow
end

xlabel('x')
ylabel('y')
title('That was a good throw')

% there are two possible solutions:
% theta = 30.82 and 59.48

