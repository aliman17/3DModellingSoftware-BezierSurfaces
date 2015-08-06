function out = edge_fit(src_name, src_side)
% src
     
    % Get metrices for source surface
    [src_x, src_y, src_z] = readMetrices(src_name);

    if strcmp(src_side,'top')
        x = src_x(1, :)';
        y = src_y(1, :)';
        z = src_z(1, :)';
        dx = src_x(1, :) - src_x(2, :); % take top line and substract with lower one
        dy = src_y(1, :) - src_y(2, :);
        dz = src_z(1, :) - src_z(2, :);
        dx = dx';
        dy = dy';
        dz = dz';
    elseif strcmp(src_side, 'bottom') 
        x = src_x(4, :)';
        y = src_y(4, :)';
        z = src_z(4, :)';
        dx = src_x(4, :) - src_x(3, :); 
        dy = src_y(4, :) - src_y(3, :);
        dz = src_z(4, :) - src_z(3, :);
        dx = dx';
        dy = dy';
        dz = dz';
    elseif strcmp(src_side, 'left')
        x = src_x(:, 1);
        y = src_y(:, 1);
        z = src_z(:, 1);
        dx = src_x(:, 1) - src_x(:, 2); 
        dy = src_y(:, 1) - src_y(:, 2);
        dz = src_z(:, 1) - src_z(:, 2);    
    elseif strcmp(src_side, 'right')
        x = src_x(:, 4);
        y = src_y(:, 4);
        z = src_z(:, 4);
        dx = src_x(:, 4) - src_x(:, 3); 
        dy = src_y(:, 4) - src_y(:, 3);
        dz = src_z(:, 4) - src_z(:, 3);
    end
    
    out = [x,y,z,dx,dy,dz];

end