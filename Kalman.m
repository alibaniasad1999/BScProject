%% Kalman Filter
%% initial
m = 10;
b = 2;
k = 2;
u = 10;
A = [1 0;...
    k/m b/m];
B = [0; 1];
C = [1 0];
D = 0;
R = 1;
x_zero = [10; 0];
x_hzero = [11; 0];
p_zero = (x_zero-x_hzero)*(x_zero'-x_hzero');
p_pri = A*p_zero*A';
K = p_pri*C'*(C*p_pri*C'+R);
y = x_zero;
%%
%x_hzero_pos = x_hzero + K(x_zero-C*x_hzero);
%x1_pri = A*x_hzero_pos+B*u;
%x1_pos = x1_pri + k
