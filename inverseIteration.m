function inverseIterationMethod = inverseIteration(A,x0,theta)
    %initialize
    sizeA=length(A);
    y=(A-eye(sizeA)*theta)\x0;
    x0=y/norm(y);
    lam=x0'*A*x0;
    CurEValue=0;
    n=1;
    fprintf('the %d eigenvalue is %f, \n the corresponding eigenvector is', n,lam);
    display(x0);
    while (n<=5)&&(abs(lam-CurEValue)>=1e-9)
        n=n+1;
        CurEValue=lam;
         y=(A-eye(sizeA)*theta)\x0;
         x0=y/norm(y);
         lam=x0'*A*x0;
         fprintf('the %d eigenvalue is %f, \n the corresponding eigenvector is', n,lam);
         display(x0);
    end;
    inverseIterationMethod=lam;