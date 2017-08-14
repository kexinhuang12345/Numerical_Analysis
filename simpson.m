function simpson=simpson(f,a,b,m)
h=(b-a)/(2*m);

approx=f(a);

for i=1:2:2m-1,
    approx=approx+4*f(a+i*h);
end;

for i=2:2:2m-2,
    approx=approx+2*f(a+i*h);
end;

approx=approx+f(b);

approx=approx*h/3;

simpson=approx;

