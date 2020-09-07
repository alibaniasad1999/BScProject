function [pp,x_hat]= fcn(u, y)
pp = zeros(2);
x_hat = zeros(2,1);
m = 10;
b = 5;
k = 5;
A = [0 1;...
    -k/m -b/m];
B = [0; 1/m];
C = [0 1];
R = 1e-4;
Q = 1e-3;
x_zero = [0; 0];
x_hzero = [10; 0];
     persistent p_pri p K xhat
     if isempty(xhat)
         xhat = x_hzero;
         return
     end
     if isempty(p)
         p = diag(((x_zero-x_hzero)*(x_zero'-x_hzero')));
         return
     end
x_pri = A*xhat+B*u;
p_pri = A*p*A + Q;
K = (p_pri*C')/(C*p_pri*C'+R);
xhat = x_pri + K*(y-C*x_pri);
p = (eye(2)-K*C)*p_pri;
x_hat = xhat;
pp = p;
