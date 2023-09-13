%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   CODE USED TO GENERATE FIGURE 5  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all; clc; clear all;

% numerical simulation spatian discretization parameters
nx = 250;
h=1/250;
x=0:h:1;
y=x;

% numerical simulation times to plot
timestoplot = ['0.01' '0.03' '0.05' '0.5'];

path = '.';

load('LakeColorsMap.mat')

allname = 'Fig5_'; 

figu = ['a';'b';'c';'d';'e';'f';'g';'h'];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%           PLOTTING            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%FIRST LOAD ALL FIG 5 .MAT FILES
for j=1:8

load([path '/' allname  figu(j) '.mat']);

end
% 

% set screen sized plot
set(gcf, 'Position', get(0, 'Screensize'));

%configs for the plots line size and mark size
fontsize=34;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Setting the limits of the colorbar
bot = min([min(min(U1)),min(min(U2)),min(min(U3)),min(min(U4)),...
    min(min(Uo1)),min(min(Uo2)),min(min(Uo3)),min(min(Uo4))]);
top  = max([max(max(U1)),max(max(U2)),max(max(U3)),max(max(U4)),...
    max(max(Uo1)),max(max(Uo2)),max(max(Uo3)),max(max(Uo4))]);
bottomu = min(reshape(bot,[nx,1]));
topu = max(reshape(top,[nx,1]));

figure1=figure(1);

%%%%%%%%%%%
% Fig5.a) %
%%%%%%%%%%%
for k=1:4
    sp_hand1=subplot(4,8,1+(k-1)*8);
    colormap(mymap);
    imagesc(x,y,reshape(U1(k,:,:),[nx,nx]));
    caxis manual
    caxis([bottomu topu]);
    ax = gca;
    axis off;
    axis('square');
    set(gca,'YDir','normal')
    pos1 = get(sp_hand1, 'Position'); % gives the position of current sub-plot
    new_pos1 = pos1 +[0 -0.05 0 0.06];
    set(sp_hand1, 'Position',new_pos1 );
end

%%%%%%%%%%%
% Fig5.b) %
%%%%%%%%%%%
for k=1:4
    sp_hand1=subplot(4,8,2+(k-1)*8);
    colormap(mymap);
    imagesc(x,y,reshape(U2(k,:,:),[nx,nx]));
    caxis manual
    caxis([bottomu topu]);
    axis('square');
    axis off;
    set(gca,'YDir','normal')
    pos1 = get(sp_hand1, 'Position'); % gives the position of current sub-plot
    new_pos1 = pos1 +[0 -0.05 0 0.06];
    set(sp_hand1, 'Position',new_pos1 );
end

%%%%%%%%%%%
% Fig5.c) %
%%%%%%%%%%%
for k=1:4
    sp_hand1=subplot(4,8,3+(k-1)*8);  
    caxis([bottomu topu]);
    imagesc(x,y,reshape(U3(k,:,:),[nx,nx]));
    colormap(mymap);
    caxis manual
    axis('square');
    axis off;
    set(gca,'YDir','normal')
    pos1 = get(sp_hand1, 'Position'); % gives the position of current sub-plot
    new_pos1 = pos1 +[0 -0.05 0 0.06];
    set(sp_hand1, 'Position',new_pos1 );
end

%%%%%%%%%%%
% Fig5.d) %
%%%%%%%%%%%
for k=1:4
    sp_hand1=subplot(4,8,4+(k-1)*8);
    colormap(mymap);
    imagesc(x,y,reshape(U4(k,:,:),[nx,nx]));
    caxis manual
    caxis([bottomu topu]);
    axis off;
    axis('square');
    set(gca,'YDir','normal')
    pos1 = get(sp_hand1, 'Position'); % gives the position of current sub-plot
    new_pos1 = pos1 +[0 -0.05 0 0.06];
    set(sp_hand1, 'Position',new_pos1 );
end

%%%%%%%%%%%
% Fig5.e) %
%%%%%%%%%%%
for k=1:4
    sp_hand1=subplot(4,8,5+(k-1)*8);
    colormap(mymap);
    imagesc(x,y,reshape(Uo1(k,:,:),[nx,nx]));
    caxis manual
    caxis([bottomu topu]);
    axis off;
    axis('square');
    set(gca,'YDir','normal')
    pos1 = get(sp_hand1, 'Position'); % gives the position of current sub-plot
    new_pos1 = pos1 +[0 -0.05 0 0.06];
    set(sp_hand1, 'Position',new_pos1 );
end

%%%%%%%%%%%
% Fig5.f) %
%%%%%%%%%%%
for k=1:4
    sp_hand1=subplot(4,8,6+(k-1)*8);
    colormap(mymap);
    imagesc(x,y,reshape(Uo2(k,:,:),[nx,nx]));
    caxis manual
    caxis([bottomu topu]);   
    axis off;
    axis('square');
    set(gca,'YDir','normal')
    pos1 = get(sp_hand1, 'Position'); % gives the position of current sub-plot
    new_pos1 = pos1 +[0 -0.05 0 0.06];
    set(sp_hand1, 'Position',new_pos1 );
end

%%%%%%%%%%%
% Fig5.g) %
%%%%%%%%%%%
for k=1:4
    sp_hand1=subplot(4,8,7+(k-1)*8);
    colormap(mymap);
    imagesc(x,y,reshape(Uo3(k,:,:),[nx,nx]));
    caxis manual
    caxis([bottomu topu]);
    axis off;
    axis('square');
    set(gca,'YDir','normal')
    pos1 = get(sp_hand1, 'Position'); % gives the position of current sub-plot
    new_pos1 = pos1 +[0 -0.05 0 0.06];
    set(sp_hand1, 'Position',new_pos1 );
end

%%%%%%%%%%%
% Fig5.h) %
%%%%%%%%%%%
for k=1:4
    sp_hand1=subplot(4,8,8+(k-1)*8);
     colormap(mymap);
    imagesc(x,y,reshape(Uo4(k,:,:),[nx,nx]));
     caxis manual
    caxis([bottomu topu]);
    axis off;
    axis('square');
    set(gca,'YDir','normal')
    pos1 = get(sp_hand1, 'Position'); % gives the position of current sub-plot
    new_pos1 = pos1 +[0 -0.05 0 0.06];
    set(sp_hand1, 'Position',new_pos1 );
end


co=colormap(mymap);
caxis manual
caxis([bottomu topu]);

ax = gca;
ax.FontSize = fontsize;
ax.FontName='Helvetica';

% Create line
annotation(figure1,'line',[0.517261904761905 0.516666666666667],...
    [0.85796766743649 0.0946882217090068],'LineWidth',2);


annotation(figure1,'textarrow',[0.158928571428572 0.211904761904762],...
    [0.808666776641375 0.748267898383372],'TextRotation',90,'String',...
    {'t=0.01'},...
    'LineStyle','none',...
    'HorizontalAlignment','center',...
    'HeadWidth',0,...
    'HeadStyle','none',...
    'HeadLength',0,...
    'FontSize',fontsize);


% Create textarrow
annotation(figure1,'textarrow',[0.158928571428573 0.211904761904762],...
    [0.591576707357311 0.531177829099307],'TextRotation',90,'String',...
     {'t=0.03'},...
    'LineStyle','none',...
    'HorizontalAlignment','center',...
    'HeadWidth',0,...
    'HeadStyle','none',...
    'HeadLength',0,...
    'FontSize',fontsize);

% Create textarrow
annotation(figure1,'textarrow',[0.158928571428573 0.211904761904762],...
    [0.371022434839989 0.310623556581986],'TextRotation',90,'String',...
     {'t=0.05'},...
    'LineStyle','none',...
    'HorizontalAlignment','center',...
    'HeadWidth',0,...
    'HeadStyle','none',...
    'HeadLength',0,...
    'FontSize',fontsize);


annotation(figure1,'textarrow',[0.15357142857143 0.206547619047619],...
    [0.141230287033985 0.0808314087759816],'TextRotation',90,...
    'String', {'t=0.5'},...
    'LineStyle','none',...
    'HorizontalAlignment','center',...
    'HeadWidth',0,...
    'HeadStyle','none',...
    'HeadLength',0,...
    'FontSize',fontsize);

% Create textbox
annotation(figure1,'textbox',...
    [0.225000000000003 0.900753326734851 0.193452380952379 0.0671285604311013],...
    'String','D_{w}=40; a=0.2; c=1.3',...
    'FontSize',fontsize,...
    'FitBoxToText','off',...
    'EdgeColor','none');

% Create textbox
annotation(figure1,'textbox',...
    [0.624404761904766 0.900753326734851 0.193452380952379 0.0671285604311013],...
    'String','D_{w}=1; a=1.0; c=0.5',...
    'FontSize',fontsize,...
    'FitBoxToText','off',...
    'EdgeColor','none');


% Create textbox
annotation(figure1,'textbox',...
    [0.495238095238103 0.900753326734851 0.0428571428571412 0.067128560431101],...
    'String', {['\chi=' '5']},...
    'FontSize',fontsize,...
    'FitBoxToText','off',...
    'EdgeColor','none');


% Create textbox
annotation(figure1,'textbox',...
    [0.10892857142858 0.85796766743649 0.0261904761904682 0.0591059056417027],...
    'String','a)',...
    'FontSize',fontsize,...
    'FitBoxToText','off',...
    'EdgeColor','none');

annotation(figure1,'textbox',...
    [0.208333333333342 0.863741339491917 0.0261904761904682 0.0519630484988453],...
    'String','b)',...
    'FontSize',fontsize,...
    'FitBoxToText','off',...
    'EdgeColor','none');

annotation(figure1,'textbox',...
    [0.30892857142858 0.864896073903002 0.0261904761904682 0.0519630484988453],...
    'String','c)',...
    'FontSize',fontsize,...
    'FitBoxToText','off',...
    'EdgeColor','none');

annotation(figure1,'textbox',...
    [0.407738095238104 0.864896073903002 0.0261904761904682 0.0519630484988453],...
    'String','d)',...
    'FontSize',fontsize,...
    'FitBoxToText','off',...
    'EdgeColor','none');

annotation(figure1,'textbox',...
    [0.508333333333343 0.864896073903002 0.0261904761904681 0.0519630484988453],...
    'String','e)',...
    'FontSize',fontsize,...
    'FitBoxToText','off',...
    'EdgeColor','none');

annotation(figure1,'textbox',...
    [0.608928571428582 0.866050808314088 0.0261904761904681 0.0519630484988453],...
    'String','f)',...
    'FontSize',fontsize,...
    'FitBoxToText','off',...
    'EdgeColor','none');

annotation(figure1,'textbox',...
    [0.708333333333343 0.866050808314088 0.0261904761904683 0.0519630484988453],...
    'String','g)',...
    'FontSize',fontsize,...
    'FitBoxToText','off',...
    'EdgeColor','none');


annotation(figure1,'textbox',...
    [0.807738095238106 0.864896073903002 0.0261904761904683 0.0519630484988453],...
    'String','h)',...
    'FontSize',fontsize,...
    'FitBoxToText','off',...
    'EdgeColor','none');

% 
% 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %           save eps file
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 saveas(gcf,'Fig5','epsc')
