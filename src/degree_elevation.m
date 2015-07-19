function out = degree_elevation(control_points, r)
    % Just renaming
    B = control_points;
    
    % Build T_n,r
    n = size(control_points);
    n = n(1) -1;
    % Build T from B in C = T*B
    T = zeros(n+r+1, n+1)
    for i = 0:n
        for j = 0:r
            T(i+j+1, i+1) = nchoosek(n, i) * nchoosek(r, j) / nchoosek(n+r, i+j);
        end
    end
    C = T*B
    
    out = C;
end