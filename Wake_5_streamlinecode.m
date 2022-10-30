%% Illustrating the different starting points of different streamlines
% About :  Graphs various streamline starting points. 
% Input :  Variables_1
% Output:  Subplot of different streamlines starting at different x/d 


%% PLotting the streamlines in a subplot
figure
rew = ReSHEARLAYERandWAKE2
xi = linspace(0.01,0.4,6)

for i =1:6
    subplot(2,3,i)
    streamlinedcloser(rew,ele, lines , xi(i));
    title(string(xi(i)))
end  

%%  Equal spacing ... feel free to tweak
ele = 1
x = linspace(2.5,3.5,0.2)
lines = 10
% Gives amazing colors
figure
for i = 1:4
    subplot(2,2,i)
    x = linspace(0.01,5,50)
    for x = x
        hold on
        streamlinedcloser(rew,ele, lines , x)
    end
end

ylabel('$vx$','Interpreter', 'latex','FontSize',13,'FontWeight','Bold')
xlabel('$x/D$','Interpreter', 'latex','FontSize',13,'FontWeight','Bold')
% xlim([-0.0,2])
% ylim([-0.2,0.2])
set(gca, 'TickLabelInterpreter', 'latex')
