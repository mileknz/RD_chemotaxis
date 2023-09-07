clear all; clc; close all;

load('LakeColorsMap.mat')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% plot max eigenvalue
figure1=figure(1);

% set screen sized plot
set(gcf, 'Position', get(0, 'Screensize'));

%configs for the plots line size and mark size
fontsize=34;

du=1;
gamma=2200;
e3=1;
e1 = 1;
e2 = 1;

vchi = 0:0.01:20;
ve2 = 0:0.005:5;
ve1 = ve2;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%
%   PARAMETERS PLOT A)
a1=0.2; 
c1=1.3; 
Dw1=40;

M1 = Fig9_returnM_max_eigenvalue_chie2(du,a1,c1,e1,ve2,gamma,Dw1,vchi,e3);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%
%   PARAMETERS PLOT B)
a2=1; 
c2=0.5; 
Dw2=1;

M2 = Fig9_returnM_max_eigenvalue_chie2(du,a2,c2,e1,ve2,gamma,Dw2,vchi,e3);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%
%   PARAMETERS PLOT C)
a3=0.2; 
c3=0.2; 
Dw3=1;

chivet = 0:0.05:10;

vdw = 0:0.5:50;
ve3 = 0.05:0.005:1;

M3 = Fig9_returnM_max_eigenvalue_e3chi(du,a3,c3,e1,e2,gamma,Dw3,vchi,ve3);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

subplot(1,3,1);
imagesc(ve2,vchi,M1)
ax = gca;
axis('square');
ax.FontSize = fontsize;
ax.FontName='Helvetica';
% yticks([0 1 2 3 4 5])
% xticks([0 1 2 3 4 5])
set(gca,'YDir','normal')
ylabel('\chi')
xlabel('\epsilon_{2}')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

subplot(1,3,2);
imagesc(ve2,vchi,M2)
ax = gca;
axis('square');
ax.FontSize = fontsize;
ax.FontName='Helvetica';
% yticks([0 1 2 3 4 5])
% xticks([0 1 2 3 4 5])
set(gca,'YDir','normal')
ylabel('\chi')
xlabel('\epsilon_{2}')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

subplot(1,3,3);
imagesc(ve3,vchi,M3')
ax = gca;
axis('square');
ax.FontSize = fontsize;
ax.FontName='Helvetica';
% yticks([0 1 2 3 4 5])
% xticks([0 1 2 3 4 5])
set(gca,'YDir','normal')
xlabel('\epsilon_{3}')
ylabel('\chi')

colormap(mymap);
hp4 = get(subplot(1,3,3),'Position');
h = colorbar('Position',...
    [0.92559523809525 0.325635103926097 0.0130952380952281 0.384526558891455]);
h.Ruler.Exponent = 4;

%%%%%%%%%%%
% Create textbox
annotation(figure1,'textbox',...
    [0.0767857142857148 0.704387990762125 0.0232142857142856 0.0531177829099307],...
    'String',{'a)'},...
    'FontSize',34,...
    'FitBoxToText','off',...
    'EdgeColor','none');

% Create textbox
annotation(figure1,'textbox',...
    [0.357142857142859 0.70323325635104 0.0232142857142856 0.0531177829099307],...
    'String',{'b)'},...
    'FontSize',34,...
    'FitBoxToText','off',...
    'EdgeColor','none');

% Create textbox
annotation(figure1,'textbox',...
    [0.638095238095241 0.70323325635104 0.0232142857142857 0.0531177829099307],...
    'String',{'c)'},...
    'FontSize',34,...
    'FitBoxToText','off',...
    'EdgeColor','none');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%           save eps file
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
saveas(gcf,'Fig9_1D_eigenvalues_abc','epsc')




