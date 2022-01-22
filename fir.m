function [b] = fir(N,wc,wo,wind)
%
% FIR filter design using window method 
%
% N: order of the FIR filter
% wc: normalized cutoff frequency (between 0 and 1) 
% wo: normalized center frequency (between 0 and 1) 
% wind: type of window function
%   1 : recangular
%   2 : hanning
%   3 : hamming
%   4 : kaiser
% b: coefficients of designed filter - can be used causual or non-causual,
% because horizontal axis is not defined. BUT here when it computes sinc
% fucntion for ideal impulse response, it assumes peak is at N/2
%
% USE:
% [b] = fir(N,wc,wo,wind)

n = 0:N;
if wind == 1
    window = boxcar(N+1);
    disp('****** rectangular window *******')
elseif wind == 2
    window = hanning(N+1);
    disp('****** hanning window *******')
elseif wind == 3
    window = hamming(N+1);
    disp('****** hamming window *******')
else
    window = kaiser(N+1, 4.55);
    disp('****** kasier window *******')
end
    
% calculation of ideal impulse response
den = pi*(n-N/2);
num = sin(wc*den);

% if N even, this prevents 0/0
if fix(N/2) == N/2
    num(N/2+1) = wc; % Hopital at sinc center
    den(N/2+1) = 1;
end

figure
stem(n,num./den,'k'); axis tight; title('ideal impulse response');

b = (num./den).*window';

% frequency shifting 
[H,w] = freqz(b,1,256); % low-pass
if wo>0 && wo<1 % band-pass
    b = 2*b.*cos(wo*pi*(n-N/2))/H(1);
elseif wo == 0 % low-pass
    b = b/abs(H(1));
elseif wo == 1 % high-pass
    if mod(N,2) == 1
        N = N+1;
    end
    b = 1*b.*cos(wo*pi*(n-N/2.0));
end

[H,w] = freqz(b,1,256);
figure
subplot(2,2,1)
stem(b); xlabel('n'); ylabel('h[n]'); axis tight;
subplot(2,2,2)
plot(w/pi,abs(H)); xlabel('\omega/\pi'); ylabel('|H|'); grid on; axis tight;
subplot(2,2,3)
plot(w/pi,20*log10(abs(H))); xlabel('\omega/\pi'); ylabel('|H| dB'); grid on; axis tight;
subplot(2,2,4)
plot(w/pi, unwrap(angle(H))); xlabel('\omega/\pi'); ylabel('angle (rad)'); grid on; axis tight;

% plot(w/pi,abs(H)); grid on; axis tight;
% subplot(2,1,2)
% plot(w/pi, unwrap(angle(H))); grid on; axis tight;

end