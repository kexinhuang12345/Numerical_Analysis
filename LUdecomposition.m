% HW3 6(b)  Kexin Huang 
% LU decomposition
% input in the command window any matrix A
% then type [l,u]=LUdecomposition(A)
% it will show the l, u decomposition correctly
function[l,u]=LUdecomposition(A)

[r,c]=size(A);
for i=1:r
    u(1,i)=A(1,i);
    l(i,i)=1;
end;

for i=2:r
    l(i,1)=A(i,1)/u(1,1);
end;

for i=2:r
    for j=1:(i-1)
        if(abs(u(j,j))<1e-8)
            disp('error');
            exit;
        end;
        l(i,j)=(A(i,j)-l(i,1:j-1)*u(1:j-1,j))/u(j,j);
    end;
    
    for j=i:r
        u(i,j)=A(i,j)-l(i,1:i-1)*u(1:i-1,j);
    end;
end;