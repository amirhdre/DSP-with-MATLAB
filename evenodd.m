function [xe,xo,m] = evenodd(x,n)

    % read signal decomposition into even and odd parts 
    m = -fliplr(n);
    m1 = min([m,n]); 
    m2 = max([m,n]); 
    m = m1:m2;
    
    nm = n(1)-m(1); 
    n1=1:length(n);
    
    x1 = zeros(1,length(m)); 
    x1(n1+nm) = x; 
    x = x1;
    
    xe = 0.5*(x+fliplr(x));
    xo = 0.5*(x-fliplr(x));

end