function [y,n] = sigfold(x,n)

    % implement y(n)=x(n-k)
    n = -fliplr(n);
    y = fliplr(x);
   
end