function [xn] = idfs(Xk,N)

% compute inverse descrete fourier series. Synthesis Equation.

% xn: One period of periodic signal over 0 <= n <= N-1
% Xk: DFS coeff. array over 0 <= k <= N-1
% N: fundamental period of Xk

n = [0:1:N-1];
k = [0:1:N-1];

WN = exp(-1i*2*pi/N);
nk = n'*k;
WNnk = WN.^(-nk);
xn = Xk*WNnk; % synthesis eq. 

end