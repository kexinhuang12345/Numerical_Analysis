function qrAlgo=algoQR(A)
x=true;
ei=eig(A);
ei=sort(ei);
totalCount=0;
while x
    [Q,R]=qr(A);
    A=R*Q;
    d=diag(A);
    d=sort(d);
end;
qrAlgo=ei;