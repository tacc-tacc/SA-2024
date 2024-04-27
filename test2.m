L = 10000;
Z1 = randn(2, L);
Z2 = randn(2, L);

% Suponer que X = AZ + B, con Z gaussiana
% se puede probar que X también es gausiana y entonces:
% uX = A uZ + B ; sigmaX = A sigmaz A^T
% en nuestro caso, uZ = 0 y sigmaz es la identidad
% entonces B tiene que ser uX y para A podemos asumir que a12 = 0;
% de esta forma queda que: a11 = sigmax, rho*sigmay = a21, a22 =
% sigmay*raiz(1-rho^2)

% X1: ux=2, uy=2, sigmax= 0,4, sigmay = 0,8, rho = 0,3
% X2: ux=2, uy=2, sigmax = 2, sigmay = 4, rho = 0,7

X1 = ([[2, 0] ; [0.3*0.8, 0.8*sqrt(1-0.3*0.3)]] * Z1) + repmat([2; 2], 1, L);
scatter(X1(1,:), X1(2,:))