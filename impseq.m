function [x, n] = impseq(n0, n1, n2)

    % generate x(n) = delta(n-n0); n1 <= n <= n2
    % [x, n] = impseq(n0, n1, n2)
    
    n = n1:n2;
    x = double((n-n0)==0);