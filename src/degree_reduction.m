function out = degree_reduction(control_points, r)
    % Just renaming
    B = control_points;
    
    % Build T_n,r
    n = size(control_points);
    n = n(1) -1;
    % Build T from other side, from C in C = T*B
    T = zeros(n+1, n+1-r)
    for i = 0:(n-r)
        for j = 0:r
            T(i+j+1, i+1) = nchoosek(n-r, i) * nchoosek(r, j) / nchoosek(n, i+j);
        end
    end
    A = T'*T
    %  T is build
    C = linsolve(A, T'*B);
    
    out = C;
end