sigma1 = 1;
sigma2 = sqrt(2);
% si X es normal, entonces si Y = aX+b, entonces:
% uY = A*uX+b ; sigmaY^2 = % a^2*sigmaX^2

L = 10000;
X1 = randn(1, L);
X2 = sigma2*randn(1, L);

X = X1 + X2;
Y = X1 - X2;

H = histogram2(X, Y, 100, 'Normalization','pdf')
hold on;
% La media es la suma de las medias de ambos, que es cero
% la varianza es la suma de las varianzas porque están incorrelacionadas
% por lo tanto, sigmax^2 = 1 + 2 = 3 = sigmay^2

sigmax2 = 3;

% Función teórica
x = linspace(-5, 5, 1000);
y = x';
f = (1/(2*pi*sigmax2)) * exp(-0.5*(x.^2 + (y.^2))/3);

mesh(x, y, f)
hold off;