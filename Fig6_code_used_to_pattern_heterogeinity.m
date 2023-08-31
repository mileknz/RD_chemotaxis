close all; clc; clear all;

path = '/Users/mileknz/Documents/Paper/Simulations/';

fold ='abc_Dw40fvpos';

pathsave = [path fold '/'];

nx = 250; %spatial discretization
Mu = zeros(nx,nx);
Mv = zeros(nx,nx);
Mw = zeros(nx,nx);

vetu1 = zeros(16,1);
vetv1 = zeros(16,1);
vetw1 = zeros(16,1);

vetu2 = zeros(16,1);
vetv2 = zeros(16,1);
vetw2 = zeros(16,1);

vetu3 = zeros(16,1);
vetv3 = zeros(16,1);
vetw3 = zeros(16,1);

vetu4 = zeros(16,1);
vetv4 = zeros(16,1);
vetw4 = zeros(16,1);

chis = [0;0.1;0.2;0.3;0.4;0.5;1;2;3;4;5;10;20;30;40;50];
thrs=0.15;
for file=1:16
    
    coupling = 'e11e21';
    
    load([pathsave coupling '/' coupling '_saved' num2str(file) '.mat']);
    
    nt = length(saved.t); %to access the final time solution
    
    u = saved.y(nt,1:3:end); %each vector solution
    v = saved.y(nt,2:3:end);
    w = saved.y(nt,3:3:end);
    
    U = reshape(u,nx,nx); %transform it in a matrix
    V = reshape(v,nx,nx);
    W = reshape(w,nx,nx);
    
    ubar = sum(sum(U))/(nx^2);
    vbar = sum(sum(V))/(nx^2);
    wbar = sum(sum(W))/(nx^2);
    
    vetu1(file,1) = sum(sum(abs(U-ubar)))/(nx^2);
    vetw1(file,1) = sum(sum(abs(V-vbar)))/(nx^2);
    vetv1(file,1) = sum(sum(abs(W-wbar)))/(nx^2);
    
    
%         if(vetu1(file,1)>thrs)
%             salvapng(U,[coupling '_C' num2str(file)],[pathsave coupling '/'])
%             salvapng(V,[coupling '_A' num2str(file)],[pathsave coupling '/'])
%             salvapng(W,[coupling '_I' num2str(file)],[pathsave coupling '/'])
%         end
    
    
    coupling = 'e10e21';
    
    load([pathsave coupling '/' coupling '_saved' num2str(file) '.mat']);
    
    %     nt = length(saved.t); %to access the final time solution
    
    u = saved.y(nt,1:3:end); %each vector solution
    v = saved.y(nt,2:3:end);
    w = saved.y(nt,3:3:end);
    
    U = reshape(u,nx,nx); %transform it in a matrix
    V = reshape(v,nx,nx);
    W = reshape(w,nx,nx);
    
    ubar = sum(sum(U))/(nx^2);
    vbar = sum(sum(V))/(nx^2);
    wbar = sum(sum(W))/(nx^2);
    
    vetu2(file,1) = sum(sum(abs(U-ubar)))/(nx^2);
    vetw2(file,1) = sum(sum(abs(V-vbar)))/(nx^2);
    vetv2(file,1) = sum(sum(abs(W-wbar)))/(nx^2);

    
%         if(vetu2(file,1)>thrs)
%             salvapng(U,[coupling '_C' num2str(file)],[pathsave coupling '/'])
%             salvapng(V,[coupling '_A' num2str(file)],[pathsave coupling '/'])
%             salvapng(W,[coupling '_I' num2str(file)],[pathsave coupling '/'])
%         end
        
    coupling = 'e11e20';
    
    load([pathsave coupling '/' coupling '_saved' num2str(file) '.mat']);
    
    %     nt = length(file.t); %to access the final time solution
    
    u = saved.y(nt,1:3:end); %each vector solution
    v = saved.y(nt,2:3:end);
    w = saved.y(nt,3:3:end);
    
    U = reshape(u,nx,nx); %transform it in a matrix
    V = reshape(v,nx,nx);
    W = reshape(w,nx,nx);
    
    ubar = sum(sum(U))/(nx^2);
    vbar = sum(sum(V))/(nx^2);
    wbar = sum(sum(W))/(nx^2);
    
    vetu3(file,1) = sum(sum(abs(U-ubar)))/(nx^2);
    vetw3(file,1) = sum(sum(abs(V-vbar)))/(nx^2);
    vetv3(file,1) = sum(sum(abs(W-wbar)))/(nx^2);
    
    
%         if(vetu3(file,1)>thrs)
%             salvapng(U,[coupling '_C' num2str(file)],[pathsave coupling '/'])
%             salvapng(V,[coupling '_A' num2str(file)],[pathsave coupling '/'])
%             salvapng(W,[coupling '_I' num2str(file)],[pathsave coupling '/'])
%         end
    
    coupling = 'e10e20';
    
    load([pathsave coupling '/' coupling '_saved' num2str(file) '.mat']);
    
    %     nt = length(file.t); %to access the final time solution
    
    u = saved.y(nt,1:3:end); %each vector solution
    v = saved.y(nt,2:3:end);
    w = saved.y(nt,3:3:end);
    
    U = reshape(u,nx,nx); %transform it in a matrix
    V = reshape(v,nx,nx);
    W = reshape(w,nx,nx);
    
    ubar = sum(sum(U))/(nx^2);
    vbar = sum(sum(V))/(nx^2);
    wbar = sum(sum(W))/(nx^2);
    
    vetu4(file,1) = sum(sum(abs(U-ubar)))/(nx^2);
    vetw4(file,1) = sum(sum(abs(V-vbar)))/(nx^2);
    vetv4(file,1) = sum(sum(abs(W-wbar)))/(nx^2);

    
%        if(vetu4(file,1)>thrs)
%             salvapng(U,[coupling '_C' num2str(file)],[pathsave coupling '/'])
%             salvapng(V,[coupling '_A' num2str(file)],[pathsave coupling '/'])
%             salvapng(W,[coupling '_I' num2str(file)],[pathsave coupling '/'])
%         end
    
end

%plotting
% MplotU(vetu1,vetu2,vetu3,vetu4,fold); pause()
% MplotV(vetv1,vetv2,vetv3,vetv4,fold); pause()
% MplotW(vetw1,vetw2,vetw3,vetw4,fold)


save(['Fig6_data_' fold],'vetu1','vetu2','vetu3','vetu4',...
    'vetv1','vetv2','vetv3','vetv4',...
    'vetw1','vetw2','vetw3','vetw4')






