f1=@(x)(cos(3*pi*x)^4);
f2=@(x)sqrt(x);

for    m=20:5:200
    simps=simpsons(f2,0,1,m);
    trapez=trapezium(f2,0,1,m);
    error1=trapez-2/3;
    error2=simps-2/3;
    xlabel('m');
    ylabel('error');
    title('approx for integral of (sqrt(x)')
    loglog(m,error1,'-s')
    loglog(m,error2,'-o')
    legend('trapez','simpsons')
    hold on;
end;

for    m=0:5:100
    simps=simpsons(f1,0,1,m);
    trapez=trapezium(f1,0,1,m);
    error1=trapez-0.375;
    error2=simps-0.375;
    xlabel('m');
    ylabel('error');
    title('approx for integral of cos(3*pi*x)^4')
    loglog(m,error1,'-s')
    loglog(m,error2,'-o')
    legend('trapez','simpsons')
    hold on;
end;

A=ones(5,1);
B=zeros(5,1);
i=1;
for    m=20:20:100
    simps=simpsons(f2,0,1,m);
    error=simps-2/3;
    A(i,1)=log(m);
    B(i,1)=log(error);
    i=i+1;
end;

polyfit(A,B,1);

A=ones(5,1);
B=zeros(5,1);
i=1;
for    m=20:20:100
    trapez=trapezium(f2,0,1,m);
    error=trapez-2/3;
    A(i,1)=log(m);
    B(i,1)=log(error);
    i=i+1;
end;

polyfit(A,B,1)


A=ones(5,1);
B=zeros(5,1);
i=1;
for    m=20:20:100
    trapez=trapezium(f1,0,1,m);
    error=trapez-0.375;
    A(i,1)=log(m);
    B(i,1)=log(error);
    i=i+1;
end;

polyfit(A,B,1)

A=ones(5,1);
B=zeros(5,1);
i=1;
for    m=20:20:100
    simps=simpson(f1,0,1,m);
    error=simps-0.375;
    A(i,1)=log(m);
    B(i,1)=log(error);
    i=i+1;
end;

polyfit(A,B,1)