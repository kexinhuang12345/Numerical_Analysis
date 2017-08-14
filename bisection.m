function bisect=bisection(f,a,b,n)
    
    
    for i=1:n
        c=(a+b)/2;
       if(f(c)==0)
           bisect=c;
           return;
       elseif(f(c)*f(a)<0)
            b=c;
       else 
           a=c;
       end
       return;

           
           