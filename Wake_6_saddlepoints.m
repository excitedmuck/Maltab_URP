%% Potting the saddle points.

% About: Plots the saddle point with reynold's number
% 
% Input :- Drag the 'Variables_1' file into the workspace. 
%        - Run the section 
%
% Output: Graph 1. where the saddle points exist 
%         Graph 2. where vx flips
% 
%% Variables

ele  =2;                             %To get x/D values
rew = ReSHEARLAYERandWAKE2;
reww= rew(ele);
ffd = dsearchn(rew(ele).uxux.y',0); % searching the index where y is 0
final = flipmeanv(reww);             % Getting the flipped function for mean velocities
vx = final.vx'/rew(ele).U_PIV;      %Dividing the         
b = zeros(1,16)                     % initialising the variable

%   Two plots

for i = 1:16
    ffd = dsearchn(rew(ele).uxux.y',0);
    ab = rew(i).mean.vx(:,ffd)/rew(ele).U_PIV;
    cc = ab>0
    g = dsearchn(cc,1)
    b(i) = rew(ele).uxux.x(g)
    plot(rew(ele).uxux.x/Dmm,ab)
    hold on
    col{1,i} = sprintf('Re %d',round(rew(i).Re_PIV)); 
    legend(col)
end 

title(['Vx >0'])
xlabel('x/D','fontsize',13)
ylabel('vx','fontsize',13)

for i = 1:16
    d(i) = rew(i).Re_PIV
end

%%Plotting where the vx flips
figure
cc = rew.Re_PIV
plot (d, b/Dmm , 'bo') %plotting re with saddle point
title(['x/D where vx>0'])
xlabel('Re','fontsize',13)
ylabel('x /D','fontsize',13)

%% Percentage decrease in wake length
(b(1)/Dmm - b(16)/Dmm )*100/(b(1)/Dmm)
