clear all % clear all variables
close all % close all open graphs (if any)

% This script solves the heat conduction equation

% set the input data
a = 0; b = 0.5; % domain
Tw = 5; % temperature of surrounding water
T0 = 10; % initial temperature
dx = 0.01; % spatial increment
dt = 1; % temporal increment
tend = 3600; % temporal span
alpha = 1.172e-5; % thermal diffusivity
K = 40; % thermal conductivity
h = 500; % heat transfer coefficient
% ================================================

% form the spatial grid points
x = [a:dx:b];
Nx = length(x);
% form the time grid points
time = [0:dt:tend];
Nt = length(time);

% initialise the solution matrix
T = zeros(Nt,Nx);

% set the inital value
T(1,:) = T0;
T(1,ceil(Nx/2)) = 100;

% compute the constant coefficient
c = alpha * dt / dx^2;

% compute the solution incrementally at subsequent time steps
for p = 2 : Nt
    % compute at time step p, i.e. t = p * dt or timep)
    % do it for every node in the spatial grid
    % start with the boundaries
    T(p,1) = (h*Tw+K/dx*T(p-1,2)) / (h+K/dx);
    T(p,Nx) = (h*Tw+K/dx*T(p-1,Nx-1)) / (h+K/dx);
    % do the interior nodes
    for i = 2 : Nx-1
        % apply the discretised equation
        T(p,i) = c * ( T(p-1,i+1) + T(p-1,i-1) ) + (1 - 2*c) * T(p-1,i);
    end
    % enforce the source at the central node
    T(p,ceil(Nx/2)) = 100;
end

% figure
% for p = 1 : Nt
%     plot(x,T(p,:),'b')
%     title(strcat(num2str(p*dt),'s'));
%     grid on
% 	pause(0.1)
% end

figure
x(45)
plot(time,T(:,45))
grid on
