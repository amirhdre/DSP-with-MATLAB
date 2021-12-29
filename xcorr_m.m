function [rxy,nrxy] = xcorr_m(x,nx,y,ny)
% time-domain convolution by folding the second signal 
% convolution between the first singal and the folded second signal
% [rxy,nrxy] = xcorr_m(x,nx,y,ny)

    [y1,ny1] = sigfold(y,ny);
    [rxy,nrxy] = conv_m(x,nx,y1,ny1);

end