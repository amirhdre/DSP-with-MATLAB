function [rxy,nrxy] = xcorr_m(x,nx,h,nh)

    [x,nx] = sigfold(x,nx);
    [rxy,nrxy] = conv_m(h,nh,x,nx);

end