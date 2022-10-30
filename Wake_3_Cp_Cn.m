%% Plots  all [Cp], [Cn] and [Ct] vs the Reynold's number.

% Running the code : Drag Cp_Ct.mat into the workspace to plot [Ct],[Cn]
%                    with Re.
% 
% Input: Variables required: S - Where Cp, Cn and Ct are stored. 
% Output: Graphs of Ct, Cn, Cp with Reynolds number. 

%% Reynolds numbers

rew = ReSHEARLAYERandWAKE2;
for i = 1:16
    d(i) = rew(i).Re_PIV;
end
%% plotting Cn, Ct vs reynolds number
% Note: S is the structured dataset with Cp, Cn, Ct. Saved as Cn,Ct

for i =1:16
    figure(1)
    hold on
    plot (d(i), s(i).uxuxarea , 'bo')
    figure(2)
    hold on
    plot (d(i), s(i).uxuyarea , 'bo')
end

figure(1);hold on

ylabel('$[C_n]$','Interpreter', 'latex','FontSize',14,'FontWeight','Bold')
xlabel('$Re$','Interpreter', 'latex','FontSize',14,'FontWeight','Bold')
set(gca, 'TickLabelInterpreter', 'latex')
set(gcf,'color','w');


figure(2)
hold on

ylabel('$[C_\tau]$','Interpreter', 'latex','FontSize',14,'FontWeight','Bold')
xlabel('$Re$','Interpreter', 'latex','FontSize',14,'FontWeight','Bold')
set(gca, 'TickLabelInterpreter', 'latex')
set(gcf,'color','w');
%% Plotting [Cp]

for i = 1:16
    m = s(i).uxuyarea - s(i).uxuxarea;
    s(i).cp  = m;
end

figure
for i =1:16
    figure(1)
    hold on
    plot (d(i), s(i).cp , 'bo')
end

ylabel('$[Cp]$','Interpreter', 'latex','FontSize',14,'FontWeight','Bold')
xlabel('$Re$','Interpreter', 'latex','FontSize',14,'FontWeight','Bold')
set(gca, 'TickLabelInterpreter', 'latex')
set(gcf,'color','w');