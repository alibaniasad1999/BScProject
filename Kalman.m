%% Kalman Filter
%% initial
m = 10;
b = 5;
k = 5;
u =0;
A = [0 1;...
    -k/m -b/m];
B = [0; 1/m];
C = [0 1];
D = 0;
R = 10;
x_zero = [-10; 0];
x_hzero = [-15 0; 0 0];
p_zero = (x_zero-x_hzero)*(x_zero'-x_hzero');
Q = diag([0.1 0]);
% p_pri = A*p_zero*A';
% K = p_pri*C'*(C*p_pri*C'+R);
% y = x_zero(1);
%%
%x_hzero_pos = x_hzero + K(x_zero-C*x_hzero);
%x1_pri = A*x_hzero_pos+B*u;
%x1_pos = x1_pri + k
