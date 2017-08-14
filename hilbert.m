function hn=hilbert(n)
format rational;
   h=ones(n,n);
   for i=1:n
       for j=1:n
           h(i,j)=(i+j-1)^(-1);
       end;
   end;
   hn=h;
   return;