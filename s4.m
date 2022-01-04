%% compare inverse DFS and original signal
figure
x = randn(1,10);
stem(x);
X=dfs(x,10);
x1 = idfs(X,10);
hold on;
stem(real(x1)); 

figure
subplot(2,1,1)
stem(real(X)); xlim([-1,11])
subplot(2,1,2)
stem(imag(X)); xlim([-1,11])

%% DSF example with sine waves

N = 100;
n = 0:1:N-1;
x = 1+sin(2*pi*n/N)+3*cos(2*pi*n/N)+cos(4*pi*n/N+pi/2);
figure
subplot(4,1,1); stem(n,sin(2*pi*n/N)); 
subplot(4,1,2); stem(3*cos(2*pi*n/N))
subplot(4,1,3); stem(cos(4*pi*n/N+pi/2))
subplot(4,1,4); stem(n,x)

X = dfs(x,N);

%% 