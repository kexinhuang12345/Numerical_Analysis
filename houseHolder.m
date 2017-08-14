function houseHolder=houseHolder(A,v)
    p1=eye(4)-(2*(v*v'))/(v'*v);
    display(p1);
    B=p1'*A*p1;
    display(B);
    houseHolder=p1;