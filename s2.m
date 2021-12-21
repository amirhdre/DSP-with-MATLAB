%% decompose signal 

n = -15:15;
x = stepseq(0,-15,15) - stepseq(10,-15,15);
stem(n,x)

[xe,xo,m] = evenodd(x,n);
subplot(2,2,1); stem(n,x); title('rectangular pulse'); axis tight;
subplot(2,2,2); stem(m,xe); title('even part'); axis tight;
subplot(2,2,3); stem(m,xo); title('odd part'); axis tight;
subplot(2,2,4); stem(m,xo+xe); title('odd+even'); axis tight;

%% correlation 
% correlation is convolution after folding 
% conv(x,y) = x{l)*y(l)
% corr(x,y) = x(l)*y(-l)

x = [3 11 7 0 -1 4 2];
nx = -3:3;

h = [2 3 0 -5 2 1];
nh = -1:4;

[y,ny] = conv_m(x,nx,h,nh);

subplot(3,1,1); stem(nx,x); xlim([-5 8]);
subplot(3,1,2); stem(nh,h); xlim([-5 8]);
subplot(3,1,3); stem(ny,y); xlim([-5 8]);

%% x = [3 11 7 0 -1 4 2];
% y(n) = x(n-2)+w(n), w(n) is sequence of random noise
% compute the cross-correlation between y(n) and x(n)

x = [3 11 7 0 -1 4 2];
nx = -3:3;

[y,ny] = sigshift(x,nx,2);

w = randn(1, length(y));
nw = ny;

[y,ny] = sigadd(x,nx,w,nw);

figure
subplot(3,1,1); stem(nx,x); xlim([-7 7]);
subplot(3,1,2); stem(ny,y); xlim([-7 7]);

[x,nx] = sigfold(x,nx);
[rxy,nrxy] = conv_m(y,ny,x,nx);

subplot(3,1,3); stem(nrxy,rxy); xlim([-7 7]);