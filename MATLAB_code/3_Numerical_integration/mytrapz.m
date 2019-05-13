function I = mytrapz(x,y)
% this function computes the numerical integral of y over the interval x,
% by adopting a trapezoidal scheme

n = length(x); % number of points

I = 0; % initialise the integral
for i = 2 : n 
    % compute the area of this trapezium
    Atrapz = 0.5 * ( y(i) + y(i-1) ) * ( x(i) - x(i-1) );
    % add this trapezium to the total area
    I = I + Atrapz;
end

% end