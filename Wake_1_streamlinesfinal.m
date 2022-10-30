%% Constructing the final streamline data sets stored in the variables folder -S
%  
% About:  There are 16 sections of code for the 16 Reynolds numbers to work out
%         the [Ct] and [Cn] of each of them. 
% 
%         Feel free to modify the upper and lower y-coordinates of the
%         dividing streamline,the ones I chose were the best to my
%         eye once I hovered 0.01 +/- around a certain value. The x
%         coordinate where the streamline starts is hardcoded into the
%         functions that can be modified as required.  
% 
% Running the code:
%       - Step 1: Add 'Functions and addons' folder to the environment via 'set path'
%       - Step 2: Drag the 'Variables_1' file  from 'Final variables' folder to the workspace
%       - Step 3: Run each section for each Re separately by hitting return
%                 enter (on a mac) or just left clicking in the section.
% 
% Input - ele - Reynolds number
%         pyu - upper coordinate for the streamline
%         pyd - lower coordinate for the streamline
%         lines - number of streamlines to be shown in the figure
% 
% Output- Has the graphs of the Cn and Ct integrals.
% 
% > figure;streamlined(rew,ele, lines);figureout(ele, rew , xstop , pyu, pyd) 
%                         - Displays the dividing streamline superposed
%                           against the rest of them.

% > figureout(ele,rew,xstop,pyu,pyd) - Displays the dividing streamline alone. 
% 
% > [uxuxarea, uxuyarea, upx,upy,downx,downy] = CnCtintegralnmagnitude(rew,ele, xstop, pyd, pyu, lines)
%                          - Generates Cn (uxuxarea), Ct(uxuyarea),
%                            upx,upy (upper x and y coordinates),
%                            downx,downy (lower x and y coordinates) to be
%                            stored in streamlinesfinal
%                          - Displays the [Cn],[Ct] graphs
% 
% > streamlinesfinal(ele) - Stores the dividing streamline coordinates into
%                          'streamlinesfinal' variable- already stored in the
%                           variables folder to be used in later files
%
%% Re = 1
ele = 1
lines = 100
rew = ReSHEARLAYERandWAKE2
reww = rew(ele)
xstop = 1.6   % Index for stopping the x data  
pyd = -0.66     % where the y coorindate streamline starts on the upper streamline
pyu = 0.70      % where the y coorindate streamline starts on the lower streamline
figure;streamlined(rew,ele, lines);figureout(ele, rew , xstop , pyu, pyd)  
figureout(ele, rew , xstop , pyu, pyd) 
[uxuxarea, uxuyarea, upx,upy,downx,downy] = CnCtintegralnmagnitude(rew,ele, xstop, pyd, pyu, lines)
streamlinesfinal(ele) = struct('upx', upx, 'upy', upy,'downx', downx, 'downy', downy)

%% Re = 2
ele = 2;      
xstop = 1.618;   
pyd = -0.66;     
pyu = 0.7;      
lines = 100;
rew = ReSHEARLAYERandWAKE2;
reww = rew(ele);figure;streamlined(rew,ele, lines);figureout(ele, rew , xstop , pyu, pyd)  
figureout(ele, rew , xstop , pyu, pyd) 
[uxuxarea, uxuyarea, upx,upy,downx,downy] = CnCtintegralnmagnitude(rew,ele, xstop, pyd, pyu, lines)
streamlinesfinal(ele) = struct('upx', upx, 'upy', upy,'downx', downx, 'downy', downy)

%% Re = 3
ele = 3       
xstop = 1.646 
pyd = -0.63   
pyu = 0.70    
lines = 100;
rew = ReSHEARLAYERandWAKE2;
reww = rew(ele);
figure;streamlined(rew,ele, lines);figureout(ele, rew , xstop , pyu, pyd)  
figureout(ele, rew , xstop , pyu, pyd) 
[uxuxarea, uxuyarea, upx,upy,downx,downy] = CnCtintegralnmagnitude(rew,ele, xstop, pyd, pyu, lines)
streamlinesfinal(ele) = struct('upx', upx, 'upy', upy,'downx', downx, 'downy', downy)

%% Re = 4
ele = 4       
xstop = 1.7   
lines = 100   
pyd = -0.63   
pyu = 0.70    
rew = ReSHEARLAYERandWAKE2;
reww = rew(ele);
figure;streamlined(rew,ele, lines);figureout(ele, rew , xstop , pyu, pyd)  
figureout(ele, rew , xstop , pyu, pyd) 
[uxuxarea, uxuyarea, upx,upy,downx,downy] = CnCtintegralnmagnitude(rew,ele, xstop, pyd, pyu, lines)
streamlinesfinal(ele) = struct('upx', upx, 'upy', upy,'downx', downx, 'downy', downy)

%% Re = 5
ele = 5       
xstop = 1.694 
pyd = -0.63    
pyu = 0.70     
lines = 100;
rew = ReSHEARLAYERandWAKE2;
reww = rew(ele);
figure;streamlined(rew,ele, lines);figureout(ele, rew , xstop , pyu, pyd)  
figureout(ele, rew , xstop , pyu, pyd) 
[uxuxarea, uxuyarea, upx,upy,downx,downy] = CnCtintegralnmagnitude(rew,ele, xstop, pyd, pyu, lines)
streamlinesfinal(ele) = struct('upx', upx, 'upy', upy,'downx', downx, 'downy', downy)

%% Re = 6
ele = 6       
xstop = 1.694  
pyd = -0.63     
pyu = 0.72      
lines = 100;
rew = ReSHEARLAYERandWAKE2;
reww = rew(ele);
figure;streamlined(rew,ele, lines);figureout(ele, rew , xstop , pyu, pyd)  
figureout(ele, rew , xstop , pyu, pyd) 
[uxuxarea, uxuyarea, upx,upy,downx,downy] = CnCtintegralnmagnitude(rew,ele, xstop, pyd, pyu, lines)
streamlinesfinal(ele) = struct('upx', upx, 'upy', upy,'downx', downx, 'downy', downy)

%% Re= 7

ele = 7       
xstop = 1.593  
pyd = -0.67     
pyu = 0.67     
lines = 1000;
rew = ReSHEARLAYERandWAKE2;
reww = rew(ele);
figure;streamlined(rew,ele, lines);figureout(ele, rew , xstop , pyu, pyd)  
figureout(ele, rew , xstop , pyu, pyd) 
[uxuxarea, uxuyarea, upx,upy,downx,downy] = CnCtintegralnmagnitude(rew,ele, xstop, pyd, pyu, lines)
streamlinesfinal(ele) = struct('upx', upx, 'upy', upy,'downx', downx, 'downy', downy)

%% Re= 8

ele = 8       
xstop = 1.629;  
pyd = -0.67     
pyu = 0.64     
lines = 100;
rew = ReSHEARLAYERandWAKE2;
reww = rew(ele);
figure;streamlined(rew,ele, lines);figureout(ele, rew , xstop , pyu, pyd)  
figureout(ele, rew , xstop , pyu, pyd) 
[uxuxarea, uxuyarea, upx,upy,downx,downy] = CnCtintegralnmagnitude(rew,ele, xstop, pyd, pyu, lines)
streamlinesfinal(ele) = struct('upx', upx, 'upy', upy,'downx', downx, 'downy', downy)

%% Re= 9
ele = 9       
xstop = 1.694  
pyd = -0.67     
pyu = 0.6     
lines = 1000;
rew = ReSHEARLAYERandWAKE2;
reww = rew(ele);
figure;streamlined(rew,ele, lines);figureout(ele, rew , xstop , pyu, pyd)  
figureout(ele, rew , xstop , pyu, pyd) 
[uxuxarea, uxuyarea, upx,upy,downx,downy] = CnCtintegralnmagnitude(rew,ele, xstop, pyd, pyu, lines)
streamlinesfinal(ele) = struct('upx', upx, 'upy', upy,'downx', downx, 'downy', downy)

%% Re= 10
ele = 10       
xstop = 1.663  
pyd = -0.678     
pyu = 0.7     
lines = 1000;
rew = ReSHEARLAYERandWAKE2;
reww = rew(ele);
figure;streamlined(rew,ele, lines);figureout(ele, rew , xstop , pyu, pyd)  
figureout(ele, rew , xstop , pyu, pyd) 
[uxuxarea, uxuyarea, upx,upy,downx,downy] = CnCtintegralnmagnitude(rew,ele, xstop, pyd, pyu, lines)
streamlinesfinal(ele) = struct('upx', upx, 'upy', upy,'downx', downx, 'downy', downy)

%% Re= 11
ele = 11       
xstop = 1.617  
pyd = -0.67     
pyu = 0.69     
lines = 1000;
rew = ReSHEARLAYERandWAKE2;
reww = rew(ele);
figure;streamlined(rew,ele, lines);figureout(ele, rew , xstop , pyu, pyd)  
figureout(ele, rew , xstop , pyu, pyd) 
[uxuxarea, uxuyarea, upx,upy,downx,downy] = CnCtintegralnmagnitude(rew,ele, xstop, pyd, pyu, lines)
streamlinesfinal(ele) = struct('upx', upx, 'upy', upy,'downx', downx, 'downy', downy)

%% Re= 12
ele = 12       
xstop = 1.664  
pyd = -0.672     
pyu = 0.7     
lines = 1000;
rew = ReSHEARLAYERandWAKE2;
reww = rew(ele);
figure;streamlined(rew,ele, lines);figureout(ele, rew , xstop , pyu, pyd)  
figureout(ele, rew , xstop , pyu, pyd) 
[uxuxarea, uxuyarea, upx,upy,downx,downy] = CnCtintegralnmagnitude(rew,ele, xstop, pyd, pyu, lines)
streamlinesfinal(ele) = struct('upx', upx, 'upy', upy,'downx', downx, 'downy', downy)

%% Re= 13
ele = 13       
xstop = 1.595  
pyd = -0.661     
pyu = 0.671     
lines = 1000;
rew = ReSHEARLAYERandWAKE2;
reww = rew(ele);
figure;streamlined(rew,ele, lines);figureout(ele, rew , xstop , pyu, pyd)  
figureout(ele, rew , xstop , pyu, pyd) 
[uxuxarea, uxuyarea, upx,upy,downx,downy] = CnCtintegralnmagnitude(rew,ele, xstop, pyd, pyu, lines)
streamlinesfinal(ele) = struct('upx', upx, 'upy', upy,'downx', downx, 'downy', downy)

%% Re= 14
ele = 14       
xstop = 1.616  
pyd = -0.675    
pyu = 0.7     
lines = 1000;
rew = ReSHEARLAYERandWAKE2;
reww = rew(ele);
figure;streamlined(rew,ele, lines);figureout(ele, rew , xstop , pyu, pyd)  
figureout(ele, rew , xstop , pyu, pyd) 
[uxuxarea, uxuyarea, upx,upy,downx,downy] = CnCtintegralnmagnitude(rew,ele, xstop, pyd, pyu, lines)
streamlinesfinal(ele) = struct('upx', upx, 'upy', upy,'downx', downx, 'downy', downy)

%% Re= 15
ele = 15       
xstop = 1.562  
pyd = -0.688     
pyu = 0.712     
lines = 1000;
rew = ReSHEARLAYERandWAKE2;
reww = rew(ele);
figure;streamlined(rew,ele, lines);figureout(ele, rew , xstop , pyu, pyd)  
figureout(ele, rew , xstop , pyu, pyd) 
[uxuxarea, uxuyarea, upx,upy,downx,downy] = CnCtintegralnmagnitude(rew,ele, xstop, pyd, pyu, lines)
streamlinesfinal(ele) = struct('upx', upx, 'upy', upy,'downx', downx, 'downy', downy)

%% Re= 16
ele = 16       
xstop = 1.604  
pyd = -0.688     
pyu = 0.719     
lines = 1000;
rew = ReSHEARLAYERandWAKE2;
reww = rew(ele);
figure;streamlined(rew,ele, lines);figureout(ele, rew , xstop , pyu, pyd)  
figureout(ele, rew , xstop , pyu, pyd) 
[uxuxarea, uxuyarea, upx,upy,downx,downy] = CnCtintegralnmagnitude(rew,ele, xstop, pyd, pyu, lines)
streamlinesfinal(ele) = struct('upx', upx, 'upy', upy,'downx', downx, 'downy', downy)
