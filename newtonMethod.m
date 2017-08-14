function newton=newtonMethod(f,x0,xk,n)
    y=@(x)(3*x.^2-6*x);
    for i=1:n
        xk=x0-f(x0)/y(x0);
        x0=xk;
        disp(xk);
    end;
    newton=xk;
    return;