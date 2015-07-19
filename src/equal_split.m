function v = equal_split(p1, p2, len)
    % Input:    v1, v2 represents 2 curves (only one dimension)
    %           levels is the number of intermediate curves that we want to
    %           specify the points
    % Return:   Bx, which is matrix of computed values
    
    v = zeros(1, len);
    step = (p2 - p1) / (len-1);
    for i=1:(len-2)
        v(1, i+1) = p1 + i * step;
    end
    v(1) = p1;
    v(len) = p2;
end