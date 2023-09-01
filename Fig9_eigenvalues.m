function lambdas = eigenvalues(du,dw,e3,chi,gamma,a,c,epsilon1,epsilon2)


vstar = c+a+a*epsilon1+c*epsilon2;
wstar = c*(1+epsilon2)/(e3*vstar^2);

k = 0:1:50;
ns = length(k);
lambdas = zeros(3,ns);


    for i=1:ns
        A = [-du*k(i)^2 chi*k(i)^2 0;a*gamma*epsilon1 ...
            -k(i)^2+gamma*(-1+2*vstar*wstar) gamma*vstar^2*e3;...
            gamma*c*epsilon2 -2*gamma*vstar*wstar -dw*k(i)^2+gamma*(-vstar^2)*e3];
        lambdas(:,i) = eig(A);
    end
    
    
    
    
    
%      plot(q,max(real(sigmas)),'LineWidth',2, 'Color',[0 0 0]+0.01*(m-1)); hold on;
%      line(xlim(), [0,0], 'LineWidth', 2, 'Color', [0.8 0.1 1]);
% %     plot(q,sigmas,'LineWidth',2); pause(1);
%     grid on;


