function [Xk] = dfs(xn, N)

% compute descrete fourier series coefficients that is the analysis equation. 

% Xk: DFS coeff. array over 0 <= k <= N-1
% xn: one period of periodic signal over 0 <= n <= N-1
% N: fundamental period of xn

n = 0:1:N-1;    % axis 1
k = 0:1:N-1;    % axis 2

WN = exp(-1i*2*pi/N);
nk = n'*k;
WNnk = WN.^nk;
Xk = xn*WNnk/N; % analysis eq. 

end