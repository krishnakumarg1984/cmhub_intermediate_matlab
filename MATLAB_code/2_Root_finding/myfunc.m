% Task 1

function f = myfunc(x)

% write here the function you wish to evaluate
% use the colon operator, so the comand will work with both cases of
% x being a scalar and x being  a vector

%f = x.^2 + (x-2).^3 - 5; % Task 1: 1,2,3

% f = sin(x.^2) - x + 5; % Task 2: 1,2,3  Task 3: 2

% f = (x-2).^2; % Task 2: 4

% f = tan(x); % Task 2: 5

% f = x*tan(theta)-0.5*x^2*g/vo^2/cos(theta)^2+ystart-yend  %D1
%f = 20 * tand(x) - 0.5 * 20^2 * 9.81 / 15^2 ./ cosd(x).^2 + 1.85 - 1.96;

% f = x.^2 + (2*x-9).^3 - 5;
% f = x.^2 + (x-1.5).^3 - 5;
% f = x.^2 + (x-5).^3 - 5;
 f = x.^2 + (x-8).^3 - 5;
% f = 1 ./ (x-2);
% f= cos(x).^2;
% f = cos(3*x)-0.2*x;
% f = sin(x) ./ x;

% f = x.^3 + (x-3).^2 -8;
% f = -x.*sin(x) - log(x);

end
