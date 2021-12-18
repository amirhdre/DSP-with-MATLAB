% a fun code for 1400 yrs ago

clc;close all; clear;
n = 0:0.01:2*pi;
y = (16*(pi-n).*n)./(5*pi*pi-4*(pi-n).*n);
plot(n,y)
hold on
plot(n,sin(n))
legend('approx','sine')