function M = Fig9_returnM_max_eigenvalue_chie2(du,a,c,e1,e2,gamma,dw,chi,e3)


n1 = length(chi);
n2 = length(e2);

M = zeros(n1,n2); %pattern matrix 0 or 1 depending on max(real(eig))


for j=1:n2
    for i=1:n1
        lambdas = Fig9_eigenvalues(du,dw,e3,chi(i),gamma,a,c,e1,e2(j));
        if( max(max(real(lambdas))) > 0)
            M(i,j)=max(max(real(lambdas)));
        end
    end
end



end