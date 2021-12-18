function [x, n] = realvalseq(a, n0, n1, n2)

    % generate x(n) = a^(n-n0)*step(n-n0); n1 <= n <= n2
    % [x, n] = steqseq(n0, n1, n2)
    
    n = n1:n2;
    x = a.^(n-n0) .* double((n-n0)>=0);