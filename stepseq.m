function [x, n] = stepseq(n0, n1, n2)

    % generate x(n) = step(n-n0); n1 <= n <= n2
    % [x, n] = steqseq(n0, n1, n2)
    
    n = n1:n2;
    x = double((n-n0)>=0);