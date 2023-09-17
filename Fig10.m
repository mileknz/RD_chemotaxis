%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   CODE USED TO GENERATE FIGURE 10  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all; clc; close all;

load('LakeColorsMap.mat')


% set screen sized plot
set(gcf, 'Position', get(0, 'Screensize'));

%configs for the plots line size and mark size
fontsize=34;


%id:choice to plot simulation
% id=1 for abc figures
% id=2 for def figures
% id=3 for ghi figures
id=3;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% plot max eigenvalue varying e3 and chi
figure1=figure(1);

switch id
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% first line

    case 1
    load('Fig10_a.mat');

    nt=10e-4;
    h=1/250;
    x=0:h:1;
    t=tlog;

    chi = params.chi;

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

    tit = title(['\chi=' num2str(chi)],'FontWeight','normal');
    tit.FontSize = fontsize;

    %%%
    load('Fig10_b.mat');
    
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

    %%%
    load('Fig10_c.mat');
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
        'EdgeColor','none')
    % 
    % 
    % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % %           save eps file
    % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    saveas(gcf,'Fig10_abc','epsc')
    
    case 2
        
    load('Fig10_d.mat');

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

    tit = title(['\chi=' num2str(chi)],'FontWeight','normal');
    tit.FontSize = fontsize;



    %%%
    load('Fig10_e.mat');
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
    
    %%%
    load('Fig10_f.mat');
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
    saveas(gcf,'Fig10_def','epsc')
    
    case 3
    load('Fig10_g.mat');

    nt=10e-4;
    h=1/250;
    x=0:h:1;
    t=tlog;

    e3 = params.e3;
  
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

    tit = title(['\epsilon_3=' num2str(e3)],'FontWeight','normal');
    tit.FontSize = fontsize;


    %%%
    load('Fig10_h.mat');
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
    
    %%%
    load('Fig10_i.mat');
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
        'EdgeColor','none');
    
    % 
    % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % %           save eps file
    % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    saveas(gcf,'Fig10_ghi','epsc')

end


