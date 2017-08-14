function polynominal=polynominal(x)
   y=x-1;
    for i=2:15
       y=y*(x-i);
    end;
   polynominal=y;