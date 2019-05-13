clear all % clear all variables
close all % close all open graphs (if any)

R=5; % Radius of the domain A

% set the step intervals in x and y
dx = 0.05;
dy = 0.05;

% integrate in dy, for all the value of x, i.e. find G(x)
% set the x points 
x = [-R+dx:dx:R-dx];
% for every x
for i = 1 : length(x)
    % establish the boundary c and d for this x
    cx = sqrt(R^2-x(i)^2);
    dx = cx;
    % set the y points for this x
    y = [-cx+dy:dy:dx-dy];
    % determine the values of the function z(x,y)
    for j = 1 : length(y)
        tmpz = sqrt(R-sqrt(x(i)^2+y(j)^2)); % dome of Samarkand
        %tmpz = real(sqrt(R^2-x(i)^2-y(j)^2)); % emisphere
        z(j)= tmpz;
        % store the points (x,y,z) in matrices, for plotting purposes
        Xp(i,j) = x(i);
        Yp(i,j) = y(j);
        Zp(i,j) = tmpz;
    end
    % integrate in dy from cx to dx (for this specific x)
    G(i) = mytrapz(y,z); % G(x)
end
% integrate G(x) in dx
I = mytrapz(x,G)

% plot in 3d the function z(x,y)
plot3(Xp,Yp,Zp,'b.')
grid on

% show the cusp at (0,0)
% we could differentiate with respect to x, along y = 0
% i.e. dz(x,y=0)/dx
z = sqrt(R-sqrt(x.^2+0));
der = mydiffcentral(x,z);
figure
plot(x,der,'b.');
grid on


Ihemisphere = 0.5*4/3*pi*R^3 % true volume of a hemisphere
