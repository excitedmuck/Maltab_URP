%% Compares the literature values of [Cn],[Ct] of Bal  with Re = 2, 21,500 in the dataset. 
%  
%  About: Graph of Cn and Ct values are plotted for re=2 and compared 
%         with the data extracted from Balachandar et al (1997) using 
%         an online image to coordinate tool. 

% Running the code: Step 1: Load Balachandrans, streamlinesfinal from 'Final variables'
%                   Step 1: Run the section to produce the graph. 

% NOTE: Manual adjustement of the labels is needed. 

%%
i  = 2 % Reynold's number = 2
gupy = streamlinesfinal(i).upy;
gupx = streamlinesfinal(i).upx;
gdowny = streamlinesfinal(i).downy;
gdownx = streamlinesfinal(i).downx;

xstop = 1.6   ;
lines = 1000  ;   % no of streamlines
pyd = -0.67  ;   % where the y coorindate streamline starts on the upper streamline
pyu = 0.70   ;
rew = ReSHEARLAYERandWAKE2;
reww = rew(i)

px = (0.3125*Dmm)/Dmm;                      % X position where the streamlines start
Dmm = 76.2
final = flipmeanv(reww);  % Getting the flipped function for mean velocities
vx = final.vx'./rew(i).U_PIV;
vy = final.vy'./rew(i).U_PIV;
[X,Y] = meshgrid(rew(i).uxux.x/Dmm,rew(i).uxux.y/Dmm);

uxux1 = (interp2(X,Y,uxux',gupx,gupy))/ue;   % uxux for the upper streamline
uxux2 = (interp2(X,Y,uxux',gdownx, gdowny))/ue;
uxuy1 = -(interp2(X,Y,uxuy',gupx,gupy))/ue;  % uxuy for the upper streamline
uxuy2 = -(interp2(X,Y,uxuy',gdownx,gdowny))/ue;

figure
hold on
cc = 'C_{\tau} - Present','Interpreter','latex'
plot(Cn.y, Cn.Cn, '.', 'DisplayName', cc)
b = trapz(slopeCn(:,1),slopeCn(:,2));  % Finding the area underneath the graph
biii = trapz(Cn_nonslope(:,1),Cn_nonslope(:,2)); % Finding the area underneath the graph
bi  = biii-b;                          % Subtracting them

hold on
cc= 'C_{\tau} - Bal'
plot(Ct.x+0.7, Ct.Ct , '.', 'DisplayName',cc) %shifting the axis taking into acount the different starting points
vv=  trapz(Ct.x+0.7, Ct.Ct)  % Area underneath the graph
ci = trapz(Ct_area(:,1),Ct_area(:,2))
biiii = trapz(slopect(:,1),slopect(:,2))
bii = ci+ biiii

txt = ['[C_n] (Bal)' string(sprintf('%2.3f',bi))]
t = text(-0.1,0.20,txt);
txt = ['[C_\tau] (Bal) '  string(sprintf('%2.3f',bii))];
t = text(-0.1,0.30,txt)
xlabel ('y,x')
ylabel('C_n, C_\tau')


hold on
mm = plot(gupy,uxux1,'DisplayName','C_n - Present')
xx1 = trapz(gupy,uxux1)
hold on
xlabel('y/D','fontsize',13)
ylabel('Cn','fontsize',13)
uxuxarea = abs(xx1);      %Calculated Cn
txt = ['[C_n] (Present)' string(sprintf('%2.3f',uxuxarea))];
t = text(-0.1,0.27,txt);

hold on
mm = plot(gupx,uxuy1,'DisplayName','C_\tau  - Present')
% mm.HandleVisibility='off'
q1 = trapz(gupx,uxuy1)
hold on
uxuyarea = abs(q1);
txt = ['[C_\tau] (Present) ' string(sprintf('%2.3f',uxuyarea))];
t = text(-0.1,0.37,txt);
legend
ylabel('$C_n, C_\tau$','Interpreter', 'latex','FontSize',13,'FontWeight','Bold')
xlabel('$y/D, x/D$','Interpreter', 'latex','FontSize',13,'FontWeight','Bold')
set(gca, 'TickLabelInterpreter', 'latex')
set(gcf,'color','w');

%%