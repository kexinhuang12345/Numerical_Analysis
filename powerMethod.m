function powerMethod = powerMethod(A,x0)
    %initialize
    y=A*x0;
    x0=y/norm(y);
    lam=x0'*A*x0;
    CurEValue=0;
    n=1;
    fprintf('the %d eigenvalue is %f, \n the corresponding eigenvector is', n,lam);
    display(x0);
    while (n<=10)
        n=n+1;
        CurEValue=lam;
         y=A*x0;
         x0=y/norm(y);
         lam=x0'*A*x0;
         fprintf('the %d eigenvalue is %f, \n the corresponding eigenvector is', n,lam);
         display(x0);
    end;
    powerMethod=lam;