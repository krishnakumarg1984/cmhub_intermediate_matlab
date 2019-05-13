clear all % clear all variables
close all % close all open graphs (if any)

% This script solves the heat conduction equation

% set the input data
a = 0; b = 0.5; % domain
Ta = 50; Tb = 70; % value of the solution at the boundarie
T0 = 10; % initial temperature
dx = 0.01; % spatial increment
dt = 1; % temporal increment
tend = 3600; % temporal span
alpha = 1.172e-5; % thermal diffusivity
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

% compute the constant coefficient
c = alpha * dt / dx^2;

% compute the solution incrementally at subsequent time steps
for p = 2 : Nt
    % compute at time step p, i.e. t = p * dt
    % do it for every node in the spatial grid
    % start with the boundaries
    T(p,1) = Ta;
    T(p,Nx) = Tb;
    % do the interior nodes
    for i = 2 : Nx-1
        % apply the discretised equation
        T(p,i) = c * ( T(p-1,i+1) + T(p-1,i-1) ) + (1 - 2*c) * T(p-1,i);
    end
end

plot(x,T(end,:),'b')
grid on
hold on

