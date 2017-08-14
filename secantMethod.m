function secant =secantMethod(f,x0,x1,n,xk)
for i=1:n
    xk=x1-f(x1)*((x1-x0)/(f(x1)-f(x0)));
    x0=x1;
    x1=xk;
    disp(xk);
end;    
secant=xk;

return;