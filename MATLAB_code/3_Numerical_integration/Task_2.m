clear all % clear all variables
close all % close all open graphs (if any)
% Tasks C


% read in the boundaries of the Thames
Thames = dlmread('Thames.txt',',',1,0);

% extract the North and South banks
NB = Thames(:,1:2);
SB = Thames(:,3:4);

% plot the banks
plot(NB(:,1),NB(:,2),'r');
axis equal % set ratio 1:1 for x and y axis
hold on
plot(SB(:,1),SB(:,2),'b');
grid on

% compute the area of the basin
NA = trapz(NB(:,1),NB(:,2)); % integral of North bank
SA = trapz(SB(:,1),SB(:,2)); % integral of Sorth bank
Area = (NA - SA) * 1.0e-6 % convert in Km^2

