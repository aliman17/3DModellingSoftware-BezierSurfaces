function out = bezier(control_points)
    % Vrne tocke krivulje na podlagi danih kontrolnih tock

    e = 0.1;
    t = 0:e:1;
    dim = size(control_points);
    dim = dim(2);
    y = zeros(1/e, dim);
    
    for i = 1:length(t)
        point = decast(control_points, t(i));
        len = size(point);
        point = point{1, len(2)};
        for j = 1:dim
            y(i, j) = point(j);
        end
    end
    
    out = y;
end