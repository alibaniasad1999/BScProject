m = 10;
b = 5;
k = 5;
u =0;
A = [0 1;...
    -k/m -b/m];
B = [0; 1/m];
C = [0 1];
D = 0;
R = 0;
x_zero = [0; 0];
x_hzero = [5; 0];
p_zero = (x_zero-x_hzero)*(x_zero'-x_hzero');
Q = 1e-3;
Ts = 0.01;
R = 1-e4;