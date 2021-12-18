function [y,n] = sigmult(x1, n1, x2, n2)
    
    % implements y(n)=x1(n)*x2(n)
    % [y,n] = sigadd(x1,n1,x2,n2)
    % y: multiplied sequence over n, which includes n1 and n2
    % x1: first sequence over n1
    % x2: second sequence over n2
    
    n = min(min(n1),min(n2)):max(max(n1),max(n2));
    y1 = zeros(1,length(n));
    y2 = zeros(1,length(n));
    y1( n>=min(n1) & n<=max(n1) ) = x1; % extend range 
    y2( n>=min(n2) & n<=max(n2) ) = x2;
    y = y1 .* y2;
    
end