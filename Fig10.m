%% Please load all files related to Figure 10
% or just choose 'abc' or 'def' or 'ghi' on path variable bellow.

clear all;clc;close all;

% path = 'abc';
% path = 'def';
 path = 'ghi';

load('LakeColorsMap.mat')


% set screen sized plot
set(gcf, 'Position', get(0, 'Screensize'));

%configs for the plots line size and mark size
fontsize=34;

%id:choice to plot simulation
id1 = 1;
id2 = 2;
id3 = 3;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% plot max eigenvalue varying e3 and chi
figure1=figure(1);

namu=char(path);
switch namu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% first line

    case 'ghi'
    file = ['saved' num2str(id1) '_log.mat'];
    fullname = [path file];

    load(fullname);

    nt=10e-4;
    h=1/250;
    x=0:h:1;
    t=tlog;

     e3 = params.e3;

    s(1) = subplot(1,3,1);
    colormap(mymap);
    imagesc(x,tlog,u);
    set(gca, 'YScale', 'log')
    axis([0 1 min(tlog) max(tlog)])
    axis('square');
    ax = gca;
    ax.FontSize = fontsize;
    ax.FontName='Helvetica';
    ax.YDir = 'normal';
    xlabel('x')
    ylabel('t')

    colormap(mymap);
    hp4 = get(subplot(1,3,1),'Position');
    h = colorbar('Position',...
          [-0.675 0 0 0]+[0.944079917184266 0.3256 0.0130057971014492 0.3834]);

    tit = title(['\epsilon_3=' num2str(e3)],'FontWeight','normal');
    tit.FontSize = fontsize;



    %%%
    file = ['saved' num2str(id2) '_log.mat'];
    fullname = [path file];

    load(fullname);
    e3 = params.e3;

    s(2) =subplot(1,3,2);
    colormap(mymap);
    imagesc(x,tlog,u);
    set(gca, 'YScale', 'log')
    axis([0 1 min(tlog) max(tlog)])
    axis('square');
    ax = gca;
    ax.FontSize = fontsize;
    ax.FontName='Helvetica';
    ax = gca;
    ax.YDir = 'normal';
    tit = title(['\epsilon_3=' num2str(e3)],'FontWeight','normal');
    tit.FontSize = fontsize;
    xlabel('x')
    ylabel('t')
    
    colormap(mymap);
    hp4 = get(subplot(1,3,2),'Position');
    h = colorbar('Position',...
        [-0.34 0 0 0]+[0.944079917184266 0.3256 0.0130057971014492 0.3834]);
    %%%
    file = ['saved' num2str(id3) '_log.mat'];
    fullname = [path file];

    load(fullname);
    e3 = params.e3;

    s(3) = subplot(1,3,3);
    colormap(mymap);
    imagesc(x,t,u);
    set(gca, 'YScale', 'log')
    axis([0 1 min(tlog) max(tlog)])
    axis('square');
    ax = gca;
    ax.FontSize = fontsize;
    ax.FontName='Helvetica';
    ax.YDir = 'normal';
    tit = title(['\epsilon_3=' num2str(e3)],'FontWeight','normal');
    tit.FontSize = fontsize;
    xlabel('x')
    ylabel('t')


    colormap(mymap);
    hp4 = get(subplot(1,3,3),'Position');
    h = colorbar('Position',...
        hp4-[-0.2525   -0.2156    0.2004    0.4316]);

    % 
    % here = [0.068 0.32 0.19 0.38];
    % here = [ 0.069 0.1100    0.1983    0.8150];
    here = [ 0.066 0.1100    0.1983    0.8150];
    set(s(1),'parent',gcf,'pos',here)
    set(s(2),'pos',here + [0.335 0 0 0])
    set(s(3),'pos',here + [0.675 0 0 0])

    %%%%%%%%%%%%%%%%%%
    % Create textbox
    annotation(figure1,'textbox',...
        [0 0.704387990762125 0.0232142857142858 0.0531177829099307],...
        'String',{'g)'},...
        'FontSize',34,...
        'FitBoxToText','off',...
        'EdgeColor','none');


    % Create textbox
    annotation(figure1,'textbox',...
        [0.339880952380955 0.702078521939954 0.0232142857142856 0.0531177829099307],...
        'String',{'h)'},...
        'FontSize',34,...
        'FitBoxToText','off',...
        'EdgeColor','none');


    % Create textbox
    annotation(figure1,'textbox',...
        [0.682142857142861 0.70323325635104 0.0232142857142857 0.0531177829099307],...
        'String',{'i)'},...
        'FontSize',34,...
        'FitBoxToText','off',...
        'EdgeColor','none')
    % 
    % 
    % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % %           save eps file
    % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    pathsave = '/Users/mileknz/Documents/Paper/github_folder/Fig10/';
    saveas(gcf,[pathsave 'Fig10_1D_e3_ghi'],'epsc')
    
    case 'abc'
            file = ['saved' num2str(id1) '_log.mat'];
    fullname = [path file];

    load(fullname);

    nt=10e-4;
    h=1/250;
    x=0:h:1;
    t=tlog;

    chi = params.chi;
  
    %%%
    s(1) = subplot(1,3,1);
    colormap(mymap);
    imagesc(x,tlog,u);
    set(gca, 'YScale', 'log')
    axis([0 1 min(tlog) max(tlog)])
    axis('square');
    ax = gca;
    ax.FontSize = fontsize;
    ax.FontName='Helvetica';
    ax.YDir = 'normal';
    xlabel('x')
    ylabel('t')


    colormap(mymap);
    hp4 = get(subplot(1,3,1),'Position');
    h = colorbar('Position',...
          [-0.675 0 0 0]+[0.944079917184266 0.3256 0.0130057971014492 0.3834]);

    tit = title(['\chi=' num2str(chi)],'FontWeight','normal');
    tit.FontSize = fontsize;



    %%%
    file = ['saved' num2str(id2) '_log.mat'];
    fullname = [path file];

    load(fullname);
    chi = params.chi;

    s(2) =subplot(1,3,2);
    colormap(mymap);
    imagesc(x,tlog,u);
    set(gca, 'YScale', 'log')
    axis([0 1 min(tlog) max(tlog)])
    axis('square');
    ax = gca;
    ax.FontSize = fontsize;
    ax.FontName='Helvetica';
    ax = gca;
    ax.YDir = 'normal';
    tit = title(['\chi=' num2str(chi)],'FontWeight','normal');
    tit.FontSize = fontsize;
    xlabel('x')
    ylabel('t')


    colormap(mymap);
    hp4 = get(subplot(1,3,2),'Position');
    h = colorbar('Position',...
        [-0.34 0 0 0]+[0.944079917184266 0.3256 0.0130057971014492 0.3834]);
    %%%
    file = ['saved' num2str(id3) '_log.mat'];
    fullname = [path file];

    load(fullname);
    chi = params.chi;

    s(3) = subplot(1,3,3);
    colormap(mymap);
    imagesc(x,t,u);
    set(gca, 'YScale', 'log')
    axis([0 1 min(tlog) max(tlog)])
    axis('square');
    ax = gca;
    ax.FontSize = fontsize;
    ax.FontName='Helvetica';
    ax.YDir = 'normal';
    tit = title(['\chi=' num2str(chi)],'FontWeight','normal');
    tit.FontSize = fontsize;
    xlabel('x')
    ylabel('t')


    colormap(mymap);
    hp4 = get(subplot(1,3,3),'Position');
    h = colorbar('Position',...
        hp4-[-0.2525   -0.2156    0.2004    0.4316]);

  
    here = [ 0.066 0.1100    0.1983    0.8150];
    set(s(1),'parent',gcf,'pos',here)
    set(s(2),'pos',here + [0.335 0 0 0])
    set(s(3),'pos',here + [0.675 0 0 0])

    %%%%%%%%%%%%%%%%%%
    % Create textbox
    annotation(figure1,'textbox',...
        [0 0.704387990762125 0.0232142857142858 0.0531177829099307],...
        'String',{'a)'},...
        'FontSize',34,...
        'FitBoxToText','off',...
        'EdgeColor','none');


    % Create textbox
    annotation(figure1,'textbox',...
        [0.339880952380955 0.702078521939954 0.0232142857142856 0.0531177829099307],...
        'String',{'b)'},...
        'FontSize',34,...
        'FitBoxToText','off',...
        'EdgeColor','none');


    % Create textbox
    annotation(figure1,'textbox',...
        [0.682142857142861 0.70323325635104 0.0232142857142857 0.0531177829099307],...
        'String',{'c)'},...
        'FontSize',34,...
        'FitBoxToText','off',...
        'EdgeColor','none');
    
       % 
    % 
    % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % %           save eps file
    % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    pathsave = '/Users/mileknz/Documents/Paper/github_folder/Fig10/';
    saveas(gcf,[pathsave 'Fig10_1D_chi_abc'],'epsc')
    
    case 'def'
            file = ['saved' num2str(id1) '_log.mat'];
    fullname = [path file];

    load(fullname);

    nt=10e-4;
    h=1/250;
    x=0:h:1;
    t=tlog;

    chi = params.chi;
  
    %%%
    s(1) = subplot(1,3,1);
    colormap(mymap);
    imagesc(x,tlog,u);
    set(gca, 'YScale', 'log')
    axis([0 1 min(tlog) max(tlog)])
    axis('square');
    ax = gca;
    ax.FontSize = fontsize;
    ax.FontName='Helvetica';
    ax.YDir = 'normal';
    xlabel('x')
    ylabel('t')


    colormap(mymap);
    hp4 = get(subplot(1,3,1),'Position');
    h = colorbar('Position',...
          [-0.675 0 0 0]+[0.944079917184266 0.3256 0.0130057971014492 0.3834]);

    tit = title(['\chi=' num2str(chi)],'FontWeight','normal');
    tit.FontSize = fontsize;



    %%%
    file = ['saved' num2str(id2) '_log.mat'];
    fullname = [path file];

    load(fullname);
    chi = params.chi;

    s(2) =subplot(1,3,2);
    colormap(mymap);
    imagesc(x,tlog,u);
    set(gca, 'YScale', 'log')
    axis([0 1 min(tlog) max(tlog)])
    axis('square');
    ax = gca;
    ax.FontSize = fontsize;
    ax.FontName='Helvetica';
    ax = gca;
    ax.YDir = 'normal';
    tit = title(['\chi=' num2str(chi)],'FontWeight','normal');
    tit.FontSize = fontsize;
    xlabel('x')
    ylabel('t')


    colormap(mymap);
    hp4 = get(subplot(1,3,2),'Position');
    h = colorbar('Position',...
        [-0.34 0 0 0]+[0.944079917184266 0.3256 0.0130057971014492 0.3834]);
    %%%
    file = ['saved' num2str(id3) '_log.mat'];
    fullname = [path file];

    load(fullname);
    chi = params.chi;

    s(3) = subplot(1,3,3);
    colormap(mymap);
    imagesc(x,t,u);
    set(gca, 'YScale', 'log')
    axis([0 1 min(tlog) max(tlog)])
    axis('square');
    ax = gca;
    ax.FontSize = fontsize;
    ax.FontName='Helvetica';
    ax.YDir = 'normal';
    tit = title(['\chi=' num2str(chi)],'FontWeight','normal');
    tit.FontSize = fontsize;
    xlabel('x')
    ylabel('t')


    colormap(mymap);
    hp4 = get(subplot(1,3,3),'Position');
    h = colorbar('Position',...
        hp4-[-0.2525   -0.2156    0.2004    0.4316]);

  
    here = [ 0.066 0.1100    0.1983    0.8150];
    set(s(1),'parent',gcf,'pos',here)
    set(s(2),'pos',here + [0.335 0 0 0])
    set(s(3),'pos',here + [0.675 0 0 0])

    %%%%%%%%%%%%%%%%%%
    % Create textbox
    annotation(figure1,'textbox',...
        [0 0.704387990762125 0.0232142857142858 0.0531177829099307],...
        'String',{'d)'},...
        'FontSize',34,...
        'FitBoxToText','off',...
        'EdgeColor','none');


    % Create textbox
    annotation(figure1,'textbox',...
        [0.339880952380955 0.702078521939954 0.0232142857142856 0.0531177829099307],...
        'String',{'e)'},...
        'FontSize',34,...
        'FitBoxToText','off',...
        'EdgeColor','none');


    % Create textbox
    annotation(figure1,'textbox',...
        [0.682142857142861 0.70323325635104 0.0232142857142857 0.0531177829099307],...
        'String',{'f)'},...
        'FontSize',34,...
        'FitBoxToText','off',...
        'EdgeColor','none');
    
       % 
    % 
    % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % %           save eps file
    % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    pathsave = '/Users/mileknz/Documents/Paper/github_folder/Fig10/';
    saveas(gcf,[pathsave 'Fig10_1D_chi_def'],'epsc')

end


