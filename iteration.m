function iter=iteration(r)
A=[1,r;r,1];
iteration=algoQR(A);
plot(r,iteration,'c*');
hold on;
iter=iteration;
