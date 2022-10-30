%% Displays the underlying functions flipping the data in the functions used in Wake_1_streamlinesfinal
% 
% About : Running each section of the code shows the flipping of the uxux, uyuy
%         data. 
% 
% Running the code : Step 1: Set path to the 'Functions and addon's' folder
%                    Step 2: Drag Variables_1 into the workspace. 
%                    Step 3: Run the section. 
% 
%% Graphing the flipping of uxux
% 
subplot(1,2,1)
showf(ReSHEARLAYERandWAKE2(2).uxux);
ylim([-80 70])
ylabel('$y (mm)$','Interpreter', 'latex','FontSize',13,'FontWeight','Bold')
xlabel('$x (mm) $','Interpreter', 'latex','FontSize',13,'FontWeight','Bold')
xlim([0.0 200])
set(gca, 'TickLabelInterpreter', 'latex')
set(gcf,'color','w');

subplot(1,2,2)
mm = flippux(ReSHEARLAYERandWAKE2(2));
showf(mm)
ylim([-80 70])
ylabel('$y (mm)$','Interpreter', 'latex','FontSize',13,'FontWeight','Bold')
xlabel('$x (mm) $','Interpreter', 'latex','FontSize',13,'FontWeight','Bold')
xlim([0.0 200])
title('')
set(gca, 'TickLabelInterpreter', 'latex')
set(gcf,'color','w');

%% showing mean flipping data for re = 2
mn = flipmeanv(ReSHEARLAYERandWAKE2(2))
showf(mn)

%% Flipping data for uxuy

subplot(1,2,1)
showf(ReSHEARLAYERandWAKE2(2).uxuy);
ylim([-80 70])
title('')
legend
ylabel('$y (mm)$','Interpreter', 'latex','FontSize',13,'FontWeight','Bold')
xlabel('$x (mm) $','Interpreter', 'latex','FontSize',13,'FontWeight','Bold')
xlim([0 270])
set(gca, 'TickLabelInterpreter', 'latex')
set(gcf,'color','w');

subplot(1,2,2)
gf = flippuxuy(ReSHEARLAYERandWAKE2(2))
showf(gf)
ylim([-80 70])
xlim([0 270])
legend
ylabel('$y (mm)$','Interpreter', 'latex','FontSize',13,'FontWeight','Bold')
xlabel('$x (mm) $','Interpreter', 'latex','FontSize',13,'FontWeight','Bold')
set(gca, 'TickLabelInterpreter', 'latex')
set(gcf,'color','w');
title('')
