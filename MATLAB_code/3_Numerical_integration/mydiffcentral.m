function dy = mydiffcentral(x,y)
% this function computes the derivative of y with respect to x, with
% the central difference scheme

n = length(x); % number of points

% first point (needs to be treated separately)
dy(1) = ( y(2) - y(1) ) / ( x(2) - x(1) );
% central points
dy(2:n-1) = ( y(3:n) - y(1:n-2) ) ./ ( x(3:n) - x(1:n-2) );
% last point (needs to be treated separately)
dy(n) = ( y(n) - y(n-1) ) / ( x(n) - x(n-1) );

%end