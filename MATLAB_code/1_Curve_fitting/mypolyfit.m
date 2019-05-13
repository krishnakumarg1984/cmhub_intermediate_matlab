% Task 3

% 1
function [p, Err] = mypolyfit(x,y,n)

coeff = polyfit(x,y,n);

% evaluate the polynomial at points x
p = zeros(1,length(x));
for i = 1 : n+1
   p = p + coeff(i) * x.^(n+1-i);
end

res = y - p;

Err = sum(res.^2);

% end function

