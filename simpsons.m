function simp = simpsons(f,a,b,m)
h  = (b - a)/(2*m);
sodd = 0;
seven = 0;

for k=1:m
  x = a + h*(2*k-1);
  sodd = sodd + feval(f,x);
end

for k=1:(m-1)
  x = a + h*2*k;
  seven = seven + feval(f,x);
end

simp = h*(feval(f,a)+feval(f,b)+4*sodd+2*seven)/3;
