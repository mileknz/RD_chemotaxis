% Here the data is loaded and we save the fitting coefficients

load('Fig6_data_abc_Dw40fvpos.mat');
%   load('Fig6_data_def_Dw1fvneg.mat');

t = [0;0.1;0.2;0.3;0.4;0.5;1;2;3;4;5;10;20;30;40;50];

y1 = vetv1;
y2 = vetv2;
y3 = vetv3;
y4 = vetv4;

sizedata = length(t);

%Fitting function
F = @(x,xdata) x(1)*exp(-x(2)*xdata) + x(3)*exp(-x(4)*xdata) + x(5)*ones(sizedata,1);

% We arbitrarily set our initial point x0 as follows:
x01=[1.481188589515264,0.639065248700908,-1.538802558741535,0.672332858982690,0.043304506726753]...
    +0.1*rand(1,5);
x02=[-1.093894450112485,0.728315243297634,1.031614717547516,0.685421600832151,0.050358334926281]...
    +0.1*rand(1,5);
x03=[-1.365233814957488,0.526198520409957,1.280155570384179,0.497304214080450,0.070742046497539]...
    +0.1*rand(1,5);
x04=[-0.432895021920133,1.155315051652083,0.431763172133317,1.163228564421792,0.082642919343436];


% We run the solver and plot the resulting fit.
options = optimoptions('lsqcurvefit','Algorithm','levenberg-marquardt');
lb = [];
ub = [];
[x1,resnorm1,~,exitflag1,output1] = lsqcurvefit(F,x01,t,y1,lb,ub,options);
[x2,resnorm2,~,exitflag2,output2] = lsqcurvefit(F,x02,t,y2,lb,ub,options);
[x3,resnorm3,~,exitflag3,output3] = lsqcurvefit(F,x03,t,y3,lb,ub,options);
[x4,resnorm4,~,exitflag4,output4] = lsqcurvefit(F,x04,t,y4,lb,ub,options);

% plotting
set(gcf, 'Position', get(0, 'Screensize'));
wid = 4;
mark = 22;

color1 = [0.33,0.11,0.56];
plot1 = plot(t,y1); hold on;
plot1.MarkerSize = mark;
plot1.Marker = 's';
plot1.LineStyle = 'none';
plot1.LineWidth = wid;
plot1.MarkerEdgeColor = color1; 
plot1.MarkerFaceColor = [0.726203203201294,0.785383284091950,0.913725495338440];

color2 = [0.45,0.51,0.58];
plot2 = plot(t,y2); hold on;
plot2.MarkerSize = mark;
plot2.Marker = '^';
plot2.LineStyle = 'none';
plot2.LineWidth = wid;
plot2.MarkerEdgeColor = color2; 
plot2.MarkerFaceColor = [0.796078443527222,0.856862783432007,0.899999976158142];

color3 = [0.52,0.45,0.82];
plot3 = plot(t,y3); hold on;
plot3.MarkerSize = mark;
plot3.Marker = 'o';
plot3.LineStyle = 'none';
plot3.LineWidth = wid;
plot3.MarkerEdgeColor = color3; 
plot3.MarkerFaceColor = [0.863305330276489,0.881792724132538,0.870588243007660];

color4 = [0.53,0.42,0.28];
plot4 = plot(t,y4); hold on;
plot4.MarkerSize = mark;
plot4.Marker = 'd';
plot4.LineStyle = 'none';
plot4.LineWidth = wid;
plot4.MarkerEdgeColor = color4; 
plot4.MarkerFaceColor = [0.941176474094391,0.909803926944733,0.835294127464294];

pos = get(gca, 'Position');
set(gca, 'Position', [pos(1) pos(2)+0.09 pos(3) pos(4)-0.03]);
ax = gca;
axis([0 50 0 2.1]);
axis('square');
ax.FontSize = 80;
ax.FontName='Helvetica';
xlabel('\chi','Position',[25 -0.009])
ylabel('M')


%plotting fitting

tplot = linspace(0,50);
Fplot1 = F(x1,tplot);
Fplot2 = F(x2,tplot);
Fplot3 = F(x3,tplot);
Fplot4 = F(x4,tplot);

l1 = plot(tplot,Fplot1(1,:)); hold on;
l1.LineWidth = 6;
l1.LineStyle = '-';
l1.Color = color1;

l2 = plot(tplot,Fplot2(1,:)); hold on;
l2.LineWidth = 6;
l2.LineStyle = '--';
l2.Color = color2;

l3 = plot(tplot,Fplot3(1,:)); hold on;
l3.LineWidth = 6;
l3.LineStyle = ':';
l3.Color = color3;

l4 = plot(tplot,Fplot4(1,:)); hold on;
l4.LineWidth = 6;
l4.LineStyle = '-.';
l4.Color = color4;

%  legend({'\epsilon_{1}=1, \epsilon_{2}=1','\epsilon_{1}=0, \epsilon_{2}=1','\epsilon_{1}=1, \epsilon_{2}=0',...
%      '\epsilon_{1}=0, \epsilon_{2}=0'},'Position',[0.48102298831719 0.270925289049632 0.223738916444716 0.547180667433832])

hold off

save(['Fig6_Mv_fit_abc_Dw40fvpos'], 'x1','x2','x3','x4');
%   save(['Fig6_Mv_fit_def_Dw1fvneg'], 'x1','x2','x3','x4');
