clear; clc; close all;

x = [1 3 2];
n = 5:7;
figure 
subplot(4,1,1)
stem(n,x)
xlim([0 10])
[x1,n1] = impseq(5,0,10);
subplot(4,1,2)
stem(n1,x1)
[x2,n2] = impseq(6,0,10);
subplot(4,1,3)
stem(n2,x2)
[x3,n3] = impseq(7,0,10);
subplot(4,1,4)
stem(n3,x3)