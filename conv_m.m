function [y, ny] = conv_m(x,nx,h,nh)

    % modified convolution routine for signal processing
    % [y, ny] = conv_m(x,nx,h,nh)
    % x: input signal
    % nx: horizontal axis of x
    % h: impulse response of system
    % nh: horizontal axis of h
    nyb = nx(1)+nh(1);
    nye = nx(end)+nh(end);
    
    ny = nyb:nye;
    y = conv(x,h);
    
end