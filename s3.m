clc; clear; close all;

%% express convolution as matrix multiplication 

h = [1 2 3 4 5]';
x = randn(3,1);
A = convmtx(h,length(x));
y = A*x;
y1 = conv(h,x);
figure
stem(y)
hold on
stem(y1)
legend('convmtx','conv')

%% matlab DTFT implementation

n = -1:3;
x = 1:5;

M = 500;
k = 0:M;
w = (pi/M)*k;

X = x * (exp(-1i*pi/M)).^(n'*k);

magX = abs(X);
angX = angle(X);
realX = real(X);
imagX = imag(X);

subplot(2,2,1); plot(k/M, magX); grid on;
xlabel('frequency in pi'); title('Magnitude');

subplot(2,2,2); plot(k/M, angX/pi); grid on;
xlabel('frequency in pi'); title('Angle');

subplot(2,2,3); plot(k/M, realX); grid on;
xlabel('frequency in pi'); title('real part');

subplot(2,2,4); plot(k/M, imagX); grid on;
xlabel('frequency in pi'); title('imag part');



 