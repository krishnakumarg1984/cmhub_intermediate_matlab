clear all % clear all variables
close all % close all open graphs (if any)

x = [0:0.12:4];
y = -(x-2).^2+4;
% integrate numerically
I = mytrapz(x,y)
% analytical integral is 2x^2 - x^3/3
Itrue = 2*4^2-4^3/3
err = abs((I - Itrue)) / Itrue *100

% compute the max Dx to contain the numerical error within eps% of the 
% exact value
eps = 0.001;

% set I to a big value to start with
I = 2*Itrue;
% set an initial dx
dx = 1;
while abs((I - Itrue)) / Itrue > eps % check if error is still large
    dx = dx - 0.001; % reduce the dx of 0.001
    x = [0:dx:4]; % reset the interval with new finer points
    y = -(x-2).^2+4; % recompute y for these new points
    I = mytrapz(x,y); % integrate
end
maxdx =dx

% use the Matlab function
% x = [0:0.1:4];
% y = -(x-2).^2+4;
% Imat = trapz(x,y)


% use of quad
% Iquadsqrt = quad('sqrt',0,1)

% Iquad = quad('-(x-2).^2+4',0,4)

