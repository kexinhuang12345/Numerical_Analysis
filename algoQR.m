function qrAlgo=algoQR(A)
x=true;
ei=eig(A);
ei=sort(ei);
totalCount=0;
while x
    totalCount=totalCount+1;
    [Q,R]=qr(A);
    A=R*Q;
    d=diag(A);
    d=sort(d);
    count=0;
    for i=1:length(d)
        if(abs(ei(i)-d(i))<1e-10)
            count=count+1;
        end;
    end;
    if count==length(d)
        x=false;
        ei=d;
    end;
end;
qrAlgo=totalCount;