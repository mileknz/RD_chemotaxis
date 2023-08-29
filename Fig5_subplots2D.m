close all; clc; clear all;

path = '/Users/mileknz/Documents/Paper/github_folder/data';

% load('LakeColorsMap.mat')

folder1 = 'Dw40fvpos'; %inside turing
folder2 = 'Dw1fvneg'; %outside turing

coup1 = 'e10e20';
coup2 = 'e10e21';
coup3 = 'e11e20';
coup4 = 'e11e21';


%id:choice of chi to plot simulation
chivet=[0;0.1;0.2;0.3;0.4;0.5;1;2;3;4;5;10;20;30;40;50];
id=11;
% 
% %%%%%%%%%%%%%%%%%%%%%%
% %   SAVING DATA FOR GITHUB
% %%%%%%%%%%%%%%%%%%%%%%%

%load first plot
load([path '/' folder1  '_' coup1 '_saved' num2str(id) '.mat']);

nt = length(saved.t);
timestoplot = [2 4 6 nt];

nx = 250; %spatial discretization
h=1/250;
x=0:h:1;
y=x;
% 
% size=4;
% for kk =1:size
%     u = saved.y(timestoplot(kk),1:3:end); %each vector solution
%     U1(kk,:,:) = reshape(u,nx,nx); %transform it in a matrix
% end
% 
% 
% load([path '/' folder1  '_' coup2 '_saved' num2str(id) '.mat']);
% for kk =1:size
%     u = saved.y(timestoplot(kk),1:3:end); %each vector solution
%     U2(kk,:,:) = reshape(u,nx,nx); %transform it in a matrix
% end
% 
% load([path '/' folder1  '_' coup3 '_saved' num2str(id) '.mat']);
% for kk =1:size
%     u = saved.y(timestoplot(kk),1:3:end); %each vector solution
%     U3(kk,:,:) = reshape(u,nx,nx); %transform it in a matrix
% end
% 
% load([path '/' folder1  '_' coup4 '_saved' num2str(id) '.mat']);
% for kk =1:size
%     u = saved.y(timestoplot(kk),1:3:end); %each vector solution
%     U4(kk,:,:) = reshape(u,nx,nx); %transform it in a matrix
% end
% 
% % save('Dw40fvpos_e10e20','U1')
% % save('Dw40fvpos_e10e21','U2')
% % save('Dw40fvpos_e11e20','U3')
% % save('Dw40fvpos_e11e21','U4')
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %   outside turing
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %load first plot
% load([path '/' folder2  '_' coup1 '_saved' num2str(id) '.mat']);
% t=saved.t;
% nt = length(saved.t);
% % timestoplot = [2 4 6 nt];
% 
% nx = 250; %spatial discretization
% h=1/250;
% x=0:h:1;
% y=x;
% 
% size=4;
% for kk =1:size
%     u = saved.y(timestoplot(kk),1:3:end); %each vector solution
%     Uo1(kk,:,:) = reshape(u,nx,nx); %transform it in a matrix
% end
% 
% load([path '/' folder2  '_' coup2 '_saved' num2str(id) '.mat']);
% size=4;
% for kk =1:size
%     u = saved.y(timestoplot(kk),1:3:end); %each vector solution
%     Uo2(kk,:,:) = reshape(u,nx,nx); %transform it in a matrix
% end
% 
% load([path '/' folder2  '_' coup3 '_saved' num2str(id) '.mat']);
% size=4;
% for kk =1:size
%     u = saved.y(timestoplot(kk),1:3:end); %each vector solution
%     Uo3(kk,:,:) = reshape(u,nx,nx); %transform it in a matrix
% end
% 
% load([path '/' folder2  '_' coup4 '_saved' num2str(id) '.mat']);
% size=4;
% for kk =1:size
%     u = saved.y(timestoplot(kk),1:3:end); %each vector solution
%     Uo4(kk,:,:) = reshape(u,nx,nx); %transform it in a matrix
% end
% 
% 
% % save('Dw1fvneg_e10e20','Uo1')
% % save('Dw1fvneg_e10e21','Uo2')
% % save('Dw1fvneg_e11e20','Uo3')
% % save('Dw1fvneg_e11e21','Uo4')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   PLOTTING - FIRST LOAD ALL FIG 5 .MAT FILES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% plot varying time

figure1=figure(1);

%%%%%%%%%%%
% first line: e1=1 e2=1;
for k=1:4
    sp_hand1=subplot(4,8,1+(k-1)*8);
    
    colormap(mymap);
    

    % surf(reshape(U1(k,:,:),[nx,nx]));
    imagesc(x,y,reshape(U1(k,:,:),[nx,nx]));
    caxis manual
    caxis([bottomu topu]);
    ax = gca;
    axis off;
    axis('square');
    % ax.FontSize = fontsize;
    % ax.FontName='Helvetica';
    set(gca,'YDir','normal')
    pos1 = get(sp_hand1, 'Position'); % gives the position of current sub-plot
    new_pos1 = pos1 +[0 -0.05 0 0.06];
    set(sp_hand1, 'Position',new_pos1 );
end

%%%%%%%%%%%
% second line: e1=0 e2=1;
for k=1:4
    sp_hand1=subplot(4,8,2+(k-1)*8);
    
    colormap(mymap);
    

    % surf(reshape(U1(k,:,:),[nx,nx]));
    imagesc(x,y,reshape(U2(k,:,:),[nx,nx]));
    caxis manual
caxis([bottomu topu]);
    % ax = gca;
    axis('square');
    axis off;
    % ax.FontSize = fontsize;
    % ax.FontName='Helvetica';
    set(gca,'YDir','normal')
    pos1 = get(sp_hand1, 'Position'); % gives the position of current sub-plot
    new_pos1 = pos1 +[0 -0.05 0 0.06];
    set(sp_hand1, 'Position',new_pos1 );
end



%%%%%%%%%%%
% third line: e1=1 e2=0;
for k=1:4
    sp_hand1=subplot(4,8,3+(k-1)*8);
    
    
caxis([bottomu topu]);

    % surf(reshape(U1(k,:,:),[nx,nx]));
    imagesc(x,y,reshape(U3(k,:,:),[nx,nx]));
    colormap(mymap);
    caxis manual
    % ax = gca;
    axis('square');
    axis off;
    % ax.FontSize = fontsize;
    % ax.FontName='Helvetica';
    set(gca,'YDir','normal')
    pos1 = get(sp_hand1, 'Position'); % gives the position of current sub-plot
    new_pos1 = pos1 +[0 -0.05 0 0.06];
    set(sp_hand1, 'Position',new_pos1 );
end


%%%%%%%%%%%
% fourth colunm: e1=0 e2=0;
for k=1:4
    sp_hand1=subplot(4,8,4+(k-1)*8);
    
    colormap(mymap);
   

    % surf(reshape(U1(k,:,:),[nx,nx]));
    imagesc(x,y,reshape(U4(k,:,:),[nx,nx]));
     caxis manual
caxis([bottomu topu]);
    
    % ax = gca;
    axis off;
    axis('square');
    % ax.FontSize = fontsize;
    % ax.FontName='Helvetica';
    set(gca,'YDir','normal')
    pos1 = get(sp_hand1, 'Position'); % gives the position of current sub-plot
    new_pos1 = pos1 +[0 -0.05 0 0.06];
    set(sp_hand1, 'Position',new_pos1 );
end




for k=1:4
    sp_hand1=subplot(4,8,5+(k-1)*8);
    colormap(mymap);
    

    % surf(reshape(U1(k,:,:),[nx,nx]));
    imagesc(x,y,reshape(Uo1(k,:,:),[nx,nx]));
    caxis manual
caxis([bottomu topu]);
    % ax = gca;
    axis off;
    axis('square');
    % ax.FontSize = fontsize;
    % ax.FontName='Helvetica';
    set(gca,'YDir','normal')
    pos1 = get(sp_hand1, 'Position'); % gives the position of current sub-plot
    new_pos1 = pos1 +[0 -0.05 0 0.06];
    set(sp_hand1, 'Position',new_pos1 );
end

%%%%%%%%%%%
% fourth colunm: e1=0 e2=0;
for k=1:4
    sp_hand1=subplot(4,8,6+(k-1)*8);
    
    colormap(mymap);
    

    % surf(reshape(U1(k,:,:),[nx,nx]));
    imagesc(x,y,reshape(Uo2(k,:,:),[nx,nx]));
    caxis manual
caxis([bottomu topu]);
    % ax = gca;
    axis off;
    axis('square');
    % ax.FontSize = fontsize;
    % ax.FontName='Helvetica';
    set(gca,'YDir','normal')
    pos1 = get(sp_hand1, 'Position'); % gives the position of current sub-plot
    new_pos1 = pos1 +[0 -0.05 0 0.06];
    set(sp_hand1, 'Position',new_pos1 );
end

for k=1:4
    sp_hand1=subplot(4,8,7+(k-1)*8);
    
     colormap(mymap);
     

    % surf(reshape(U1(k,:,:),[nx,nx]));
    imagesc(x,y,reshape(Uo3(k,:,:),[nx,nx]));
    caxis manual
    caxis([bottomu topu]);
    
    % ax = gca;
    axis off;
    axis('square');
    % ax.FontSize = fontsize;
    % ax.FontName='Helvetica';
    set(gca,'YDir','normal')
    pos1 = get(sp_hand1, 'Position'); % gives the position of current sub-plot
    new_pos1 = pos1 +[0 -0.05 0 0.06];
    set(sp_hand1, 'Position',new_pos1 );
end

for k=1:4
    sp_hand1=subplot(4,8,8+(k-1)*8);
    
     colormap(mymap);
    

    % surf(reshape(U1(k,:,:),[nx,nx]));
    imagesc(x,y,reshape(Uo4(k,:,:),[nx,nx]));
     caxis manual
caxis([bottomu topu]);
    % ax = gca;
    axis off;
    axis('square');
    % ax.FontSize = fontsize;
    % ax.FontName='Helvetica';
    set(gca,'YDir','normal')
    pos1 = get(sp_hand1, 'Position'); % gives the position of current sub-plot
    new_pos1 = pos1 +[0 -0.05 0 0.06];
    set(sp_hand1, 'Position',new_pos1 );
end




co=colormap(mymap);
caxis manual
caxis([bottomu topu]);
% hp4 = get(subplot(4,8,32),'Position');
% h = colorbar('Position',...
%     [0.917261904761912 0.0969976905311778 0.0142857142857068 0.802540415704388]);

ax = gca;
ax.FontSize = fontsize;
ax.FontName='Helvetica';




% colormap(mymap);
% hp4 = get(subplot(4,4,16),'Position');
% h = colorbar('Position',...
%      [0.919642857142859 0.145496535796767 0.0141428571428659 0.274826789838336]);
% %[hp4(1)+hp4(3)+0.002  hp4(2)  0.4  hp4(2)+hp4(3)*1.1]);



% Create line
annotation(figure1,'line',[0.517261904761905 0.516666666666667],...
    [0.85796766743649 0.0946882217090068],'LineWidth',2);


annotation(figure1,'textarrow',[0.158928571428572 0.211904761904762],...
    [0.808666776641375 0.748267898383372],'TextRotation',90,'String',...
    {['t=' num2str(t(timestoplot(1)))]},...
    'LineStyle','none',...
    'HorizontalAlignment','center',...
    'HeadWidth',0,...
    'HeadStyle','none',...
    'HeadLength',0,...
    'FontSize',fontsize);


% Create textarrow
annotation(figure1,'textarrow',[0.158928571428573 0.211904761904762],...
    [0.591576707357311 0.531177829099307],'TextRotation',90,'String',...
     {['t=' num2str(t(timestoplot(2)))]},...
    'LineStyle','none',...
    'HorizontalAlignment','center',...
    'HeadWidth',0,...
    'HeadStyle','none',...
    'HeadLength',0,...
    'FontSize',fontsize);

% Create textarrow
annotation(figure1,'textarrow',[0.158928571428573 0.211904761904762],...
    [0.371022434839989 0.310623556581986],'TextRotation',90,'String',...
     {['t=' num2str(t(timestoplot(3)))]},...
    'LineStyle','none',...
    'HorizontalAlignment','center',...
    'HeadWidth',0,...
    'HeadStyle','none',...
    'HeadLength',0,...
    'FontSize',fontsize);


annotation(figure1,'textarrow',[0.15357142857143 0.206547619047619],...
    [0.141230287033985 0.0808314087759816],'TextRotation',90,...
    'String', {['t=' num2str(t(timestoplot(4)))]},...
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
    'String', {['\chi=' num2str(chivet(id))]},...
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
