function trapez = trapez(f,a,b,m)
h=(b-a)/m;

approx=feval(f,a);

for i=1:m-1
    approx=approx+2*feval(f,a+i*h);
    
end;

approx=approx+feval(f,b);

approx=approx*h/2;

trapez=approx;

