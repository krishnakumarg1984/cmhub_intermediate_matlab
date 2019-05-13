% Task 4
clear all % clear all variables
close all % close all open graphs (if any)


% 1
% read in the data file
A = dlmread('springdata.csv',',',[1 0 100 10]);

s = size(A);
Nsprings = s(1);

% predefined load
f = [10:10:100];

% serial number
sn = A(:,1);

% for every spring
for i = 1 : Nsprings
    % select the displacement measured for this spring
    x = A(i,2:end); % note the first column contains the serial number
    k = polyfit(x,f,1); % f = k * x
    stiff(i) = k(1); % store this stiffness
end

% save the stiffness in a file
dlmwrite('stifness.csv',[sn stiff'],','); % save the matrix [sn stiff']


