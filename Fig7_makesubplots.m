% plot the subplots for the paper figure e3
% first line: increasing e3 for e2=1
% second line: e2=0
% columns: 1) u (cells); 2) v (activator); 3) w (inhibitor)
clear all; close all; clc;

% the fitting coefficients are already calculated and saved
% the function for the fitting is:
F = @(x,xdata) x(1)./(x(2)+exp(-x(3).*(xdata-x(4)))) + x(5)./(xdata.^2);

% the e3 vector values
t = [0.01;0.02;0.03;0.04;0.05;0.1;0.2;0.3;0.4;0.5;0.6;0.7;0.8;0.9;1];

% to plot the fitting
linesize = 2;
tplot = linspace(0,1);

% set screen sized plot
set(gcf, 'Position', get(0, 'Screensize'));

%configs for the plots line size and mark size
wid = 2;
mark = 12;
fontsize=30;

% colors used at the plot
color1 = [0.33,0.11,0.56];
color2 = [0.45,0.51,0.58];
color3 = [0.52,0.45,0.82];
color4 = [0.53,0.42,0.28];

facecolor1 = [0.726203203201294,0.785383284091950,0.913725495338440];
facecolor2 = [0.796078443527222,0.856862783432007,0.899999976158142];
facecolor3 = [0.863305330276489,0.881792724132538,0.870588243007660];
facecolor4 = [0.941176474094391,0.909803926944733,0.835294127464294];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%first row: load the pattern measurements for e2=1
load('Fig7_data_e21.mat')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% subplot 1
% plot u with e2=1
subplot(2,3,1)
load('Fig7_fitcoefU_e3_e21.mat')

y1 = vetu1;
y2 = vetu2;
y3 = vetu3;
y4 = vetu4;


plot1 = plot(t,y1); hold on;
plot1.MarkerSize = mark;
plot1.Marker = 's';
plot1.LineStyle = 'none';
plot1.LineWidth = wid;
plot1.MarkerEdgeColor = color1;
plot1.MarkerFaceColor = facecolor1;

% plotting configurations
ax = gca;
axis([0 1 0 1.6]);
axis('square');
ax.FontSize = fontsize;
ax.FontName='Helvetica';
xlabel('\epsilon_{3}')
ylabel('M')

plot2 = plot(t,y2); hold on;
plot2.MarkerSize = mark;
plot2.Marker = '^';
plot2.LineStyle = 'none';
plot2.LineWidth = wid;
plot2.MarkerEdgeColor = color2;
plot2.MarkerFaceColor = facecolor2;

plot3 = plot(t,y3); hold on;
plot3.MarkerSize = mark;
plot3.Marker = 'o';
plot3.LineStyle = 'none';
plot3.LineWidth = wid;
plot3.MarkerEdgeColor = color3;
plot3.MarkerFaceColor = facecolor3;


plot4 = plot(t,y4); hold on;
plot4.MarkerSize = mark;
plot4.Marker = 'd';
plot4.LineStyle = 'none';
plot4.LineWidth = wid;
plot4.MarkerEdgeColor = color4;
plot4.MarkerFaceColor = facecolor4;

%plotting fitting
Fplot1 = F(x1,tplot);
Fplot2 = F(x2,tplot);
Fplot3 = F(x3,tplot);
Fplot4 = F(x4,tplot);

l1 = plot(tplot,Fplot1(1,:)); hold on;
l1.LineWidth = linesize;
l1.LineStyle = '-';
l1.Color = color1;

l2 = plot(tplot,Fplot2(1,:)); hold on;
l2.LineWidth = linesize;
l2.LineStyle = '--';
l2.Color = color2;

l3 = plot(tplot,Fplot3(1,:)); hold on;
l3.LineWidth = linesize;
l3.LineStyle = ':';
l3.Color = color3;

l4 = plot(tplot,Fplot4(1,:)); hold on;
l4.LineWidth = linesize;
l4.LineStyle = '-.';
l4.Color = color4;

legend({'\chi=2','\chi=5','\chi=20','\chi=50',...
    },'Position',[0.248552301836511 0.64910598324507 0.0633524600682515 0.153624856156502])

% Create textbox
annotation('textbox',...
    [0.0976190476190489 0.883349827387802 0.0357142857142859 0.0523590333716916],...
    'String',{'a)'},...
    'FontSize',fontsize,...
    'LineStyle','none',...
    'FitBoxToText','off',...
    'EdgeColor',[1 1 1]);

hold off;
clear x1 x2 x3 x4;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% subplot 2
% plot v with e2=1

subplot(2,3,2)
load('Fig7_fitcoefV_e3_e21.mat')

y1 = vetv1;
y2 = vetv2;
y3 = vetv3;
y4 = vetv4;

plot1 = plot(t,y1); hold on;
plot1.MarkerSize = mark;
plot1.Marker = 's';
plot1.LineStyle = 'none';
plot1.LineWidth = wid;
plot1.MarkerEdgeColor = color1;
plot1.MarkerFaceColor = facecolor1;

% plotting configurations
ax = gca;
axis([0 1 0 1.2]);
axis('square');
ax.FontSize = fontsize;
ax.FontName='Helvetica';
xlabel('\epsilon_{3}')
ylabel('M')

plot2 = plot(t,y2); hold on;
plot2.MarkerSize = mark;
plot2.Marker = '^';
plot2.LineStyle = 'none';
plot2.LineWidth = wid;
plot2.MarkerEdgeColor = color2;
plot2.MarkerFaceColor = facecolor2;

plot3 = plot(t,y3); hold on;
plot3.MarkerSize = mark;
plot3.Marker = 'o';
plot3.LineStyle = 'none';
plot3.LineWidth = wid;
plot3.MarkerEdgeColor = color3;
plot3.MarkerFaceColor = facecolor3;


plot4 = plot(t,y4); hold on;
plot4.MarkerSize = mark;
plot4.Marker = 'd';
plot4.LineStyle = 'none';
plot4.LineWidth = wid;
plot4.MarkerEdgeColor = color4;
plot4.MarkerFaceColor = facecolor4;


%plotting fitting
Fplot1 = F(x1,tplot);
Fplot2 = F(x2,tplot);
Fplot3 = F(x3,tplot);
Fplot4 = F(x4,tplot);

l1 = plot(tplot,Fplot1(1,:)); hold on;
l1.LineWidth = linesize;
l1.LineStyle = '-';
l1.Color = color1;

l2 = plot(tplot,Fplot2(1,:)); hold on;
l2.LineWidth = linesize;
l2.LineStyle = '--';
l2.Color = color2;

l3 = plot(tplot,Fplot3(1,:)); hold on;
l3.LineWidth = linesize;
l3.LineStyle = ':';
l3.Color = color3;

l4 = plot(tplot,Fplot4(1,:)); hold on;
l4.LineWidth = linesize;
l4.LineStyle = '-.';
l4.Color = color4;


% Create textbox
annotation('textbox',...
    [0.377976190476195 0.884500575373993 0.0357142857142858 0.0523590333716916],...
    'String',{'b)'},...
    'FontSize',fontsize,...
    'LineStyle','none',...
    'FitBoxToText','off',...
    'EdgeColor',[1 1 1]);


hold off;



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% subplot 3
% plot w with e2=1

subplot(2,3,3)
load('Fig7_fitcoefW_e3_e21.mat')

y1 = vetw1;
y2 = vetw2;
y3 = vetw3;
y4 = vetw4;

plot1 = plot(t,y1); hold on;
plot1.MarkerSize = mark;
plot1.Marker = 's';
plot1.LineStyle = 'none';
plot1.LineWidth = wid;
plot1.MarkerEdgeColor = color1;
plot1.MarkerFaceColor = facecolor1;

% plotting configurations
ax = gca;
axis([0 1 0 6.3]);
axis('square');
ax.FontSize = fontsize;
ax.FontName='Helvetica';
xlabel('\epsilon_{3}')
ylabel('M')

plot2 = plot(t,y2); hold on;
plot2.MarkerSize = mark;
plot2.Marker = '^';
plot2.LineStyle = 'none';
plot2.LineWidth = wid;
plot2.MarkerEdgeColor = color2;
plot2.MarkerFaceColor = facecolor2;

plot3 = plot(t,y3); hold on;
plot3.MarkerSize = mark;
plot3.Marker = 'o';
plot3.LineStyle = 'none';
plot3.LineWidth = wid;
plot3.MarkerEdgeColor = color3;
plot3.MarkerFaceColor = facecolor3;


plot4 = plot(t,y4); hold on;
plot4.MarkerSize = mark;
plot4.Marker = 'd';
plot4.LineStyle = 'none';
plot4.LineWidth = wid;
plot4.MarkerEdgeColor = color4;
plot4.MarkerFaceColor = facecolor4;


%plotting fitting
Fplot1 = F(x1,tplot);
Fplot2 = F(x2,tplot);
Fplot3 = F(x3,tplot);
Fplot4 = F(x4,tplot);

l1 = plot(tplot,Fplot1(1,:)); hold on;
l1.LineWidth = linesize;
l1.LineStyle = '-';
l1.Color = color1;

l2 = plot(tplot,Fplot2(1,:)); hold on;
l2.LineWidth = linesize;
l2.LineStyle = '--';
l2.Color = color2;

l3 = plot(tplot,Fplot3(1,:)); hold on;
l3.LineWidth = linesize;
l3.LineStyle = ':';
l3.Color = color3;

l4 = plot(tplot,Fplot4(1,:)); hold on;
l4.LineWidth = linesize;
l4.LineStyle = '-.';
l4.Color = color4;


% Create textbox
annotation('textbox',...
    [0.673809523809529 0.884500575373993 0.0357142857142857 0.0523590333716916],...
    'String',{'c)'},...
    'FontSize',fontsize,...
    'LineStyle','none',...
    'FitBoxToText','off',...
    'EdgeColor',[1 1 1]);


hold off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%second row: load the pattern measurements for e2=0
load('Fig7_data_e20.mat');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% subplot 4
% plot u with e2=0
subplot(2,3,4)
load('Fig7_fitcoefU_e3_e20.mat')

y1 = vetu1;
y2 = vetu2;
y3 = vetu3;
y4 = vetu4;


plot1 = plot(t,y1); hold on;
plot1.MarkerSize = mark;
plot1.Marker = 's';
plot1.LineStyle = 'none';
plot1.LineWidth = wid;
plot1.MarkerEdgeColor = color1;
plot1.MarkerFaceColor = facecolor1;

% plotting configurations
ax = gca;
axis([0 1 0 1.6]);
axis('square');
ax.FontSize = fontsize;
ax.FontName='Helvetica';
xlabel('\epsilon_{3}')
ylabel('M')

plot2 = plot(t,y2); hold on;
plot2.MarkerSize = mark;
plot2.Marker = '^';
plot2.LineStyle = 'none';
plot2.LineWidth = wid;
plot2.MarkerEdgeColor = color2;
plot2.MarkerFaceColor = facecolor2;

plot3 = plot(t,y3); hold on;
plot3.MarkerSize = mark;
plot3.Marker = 'o';
plot3.LineStyle = 'none';
plot3.LineWidth = wid;
plot3.MarkerEdgeColor = color3;
plot3.MarkerFaceColor = facecolor3;


plot4 = plot(t,y4); hold on;
plot4.MarkerSize = mark;
plot4.Marker = 'd';
plot4.LineStyle = 'none';
plot4.LineWidth = wid;
plot4.MarkerEdgeColor = color4;
plot4.MarkerFaceColor = facecolor4;

%plotting fitting
Fplot1 = F(x1,tplot);
Fplot2 = F(x2,tplot);
Fplot3 = F(x3,tplot);
Fplot4 = F(x4,tplot);

l1 = plot(tplot,Fplot1(1,:)); hold on;
l1.LineWidth = linesize;
l1.LineStyle = '-';
l1.Color = color1;

l2 = plot(tplot,Fplot2(1,:)); hold on;
l2.LineWidth = linesize;
l2.LineStyle = '--';
l2.Color = color2;

l3 = plot(tplot,Fplot3(1,:)); hold on;
l3.LineWidth = linesize;
l3.LineStyle = ':';
l3.Color = color3;

l4 = plot(tplot,Fplot4(1,:)); hold on;
l4.LineWidth = linesize;
l4.LineStyle = '-.';
l4.Color = color4;
 

% Create textbox
annotation('textbox',...
    [0.0976190476190528 0.410392405063291 0.0357142857142858 0.0523590333716915],...
    'String',{'d)'},...
    'FontSize',fontsize,...
    'LineStyle','none',...
    'FitBoxToText','off',...
    'EdgeColor',[1 1 1]);

hold off;

clear x1 x2 x3 x4;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% subplot 5
% plot v with e2=0

subplot(2,3,5)
load('Fig7_fitcoefV_e3_e20.mat')

y1 = vetv1;
y2 = vetv2;
y3 = vetv3;
y4 = vetv4;

plot1 = plot(t,y1); hold on;
plot1.MarkerSize = mark;
plot1.Marker = 's';
plot1.LineStyle = 'none';
plot1.LineWidth = wid;
plot1.MarkerEdgeColor = color1;
plot1.MarkerFaceColor = facecolor1;

% plotting configurations
ax = gca;
axis([0 1 0 1.2]);
axis('square');
ax.FontSize = fontsize;
ax.FontName='Helvetica';
xlabel('\epsilon_{3}')
ylabel('M')

plot2 = plot(t,y2); hold on;
plot2.MarkerSize = mark;
plot2.Marker = '^';
plot2.LineStyle = 'none';
plot2.LineWidth = wid;
plot2.MarkerEdgeColor = color2;
plot2.MarkerFaceColor = facecolor2;

plot3 = plot(t,y3); hold on;
plot3.MarkerSize = mark;
plot3.Marker = 'o';
plot3.LineStyle = 'none';
plot3.LineWidth = wid;
plot3.MarkerEdgeColor = color3;
plot3.MarkerFaceColor = facecolor3;


plot4 = plot(t,y4); hold on;
plot4.MarkerSize = mark;
plot4.Marker = 'd';
plot4.LineStyle = 'none';
plot4.LineWidth = wid;
plot4.MarkerEdgeColor = color4;
plot4.MarkerFaceColor = facecolor4;


%plotting fitting
Fplot1 = F(x1,tplot);
Fplot2 = F(x2,tplot);
Fplot3 = F(x3,tplot);
Fplot4 = F(x4,tplot);

l1 = plot(tplot,Fplot1(1,:)); hold on;
l1.LineWidth = linesize;
l1.LineStyle = '-';
l1.Color = color1;

l2 = plot(tplot,Fplot2(1,:)); hold on;
l2.LineWidth = linesize;
l2.LineStyle = '--';
l2.Color = color2;

l3 = plot(tplot,Fplot3(1,:)); hold on;
l3.LineWidth = linesize;
l3.LineStyle = ':';
l3.Color = color3;

l4 = plot(tplot,Fplot4(1,:)); hold on;
l4.LineWidth = linesize;
l4.LineStyle = '-.';
l4.Color = color4;


% Create textbox
annotation('textbox',...
    [0.377976190476196 0.410392405063291 0.0357142857142858 0.0523590333716916],...
    'String',{'e)'},...
    'FontSize',fontsize,...
    'LineStyle','none',...
    'FitBoxToText','off',...
    'EdgeColor',[1 1 1]);

hold off;




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% subplot 6
% plot w with e2=0

subplot(2,3,6)
load('Fig7_fitcoefW_e3_e20.mat')

y1 = vetw1;
y2 = vetw2;
y3 = vetw3;
y4 = vetw4;

plot1 = plot(t,y1); hold on;
plot1.MarkerSize = mark;
plot1.Marker = 's';
plot1.LineStyle = 'none';
plot1.LineWidth = wid;
plot1.MarkerEdgeColor = color1;
plot1.MarkerFaceColor = facecolor1;

% plotting configurations
ax = gca;
axis([0 1 0 6.3]);
axis('square');
ax.FontSize = fontsize;
ax.FontName='Helvetica';
xlabel('\epsilon_{3}')
ylabel('M')

plot2 = plot(t,y2); hold on;
plot2.MarkerSize = mark;
plot2.Marker = '^';
plot2.LineStyle = 'none';
plot2.LineWidth = wid;
plot2.MarkerEdgeColor = color2;
plot2.MarkerFaceColor = facecolor2;

plot3 = plot(t,y3); hold on;
plot3.MarkerSize = mark;
plot3.Marker = 'o';
plot3.LineStyle = 'none';
plot3.LineWidth = wid;
plot3.MarkerEdgeColor = color3;
plot3.MarkerFaceColor = facecolor3;


plot4 = plot(t,y4); hold on;
plot4.MarkerSize = mark;
plot4.Marker = 'd';
plot4.LineStyle = 'none';
plot4.LineWidth = wid;
plot4.MarkerEdgeColor = color4;
plot4.MarkerFaceColor = facecolor4;


%plotting fitting
Fplot1 = F(x1,tplot);
Fplot2 = F(x2,tplot);
Fplot3 = F(x3,tplot);
Fplot4 = F(x4,tplot);

l1 = plot(tplot,Fplot1(1,:)); hold on;
l1.LineWidth = linesize;
l1.LineStyle = '-';
l1.Color = color1;

l2 = plot(tplot,Fplot2(1,:)); hold on;
l2.LineWidth = linesize;
l2.LineStyle = '--';
l2.Color = color2;

l3 = plot(tplot,Fplot3(1,:)); hold on;
l3.LineWidth = linesize;
l3.LineStyle = ':';
l3.Color = color3;

l4 = plot(tplot,Fplot4(1,:)); hold on;
l4.LineWidth = linesize;
l4.LineStyle = '-.';
l4.Color = color4;


% Create textbox
annotation('textbox',...
    [0.674404761904767 0.410392405063291 0.0357142857142857 0.0523590333716916],...
    'String',{'f)'},...
    'FontSize',fontsize,...
    'LineStyle','none',...
    'FitBoxToText','off',...
    'EdgeColor',[1 1 1]);

hold off;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%           save eps file
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
saveas(gcf,'Fig7_plot','epsc')







