% Task 1
function [sol] = mybisection(a,b,tol)
% this function receives an interval [a,b] and a tolerance,
% and attempts to find a root of the function defined in myfunc()
% within the interval [a,b], by using the bi-section method.


% repeat the procedure until the braketing interval is samller than a
% tolerance
while abs(a-b) > tol
    % calculate the mid point
    xm = (a + b) / 2;
    % establish in which subinterval th solution lies
    % compute f(a) * f(xm)
    ff = myfunc(a) * myfunc(xm);
    if ff < 0 
        % the solution lies in the left interval
        % set the upper bracket as xm
        b = xm;
    else
        % the solution lies in the right interval
        % set the lower bracket as xm
        a = xm;       
    end
    
end % while

% the true solution is bracketed within the latest interval [a,b]
% we can approximate it with the midpoint
sol = (a + b) / 2;

% end