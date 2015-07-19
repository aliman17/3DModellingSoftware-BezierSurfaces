function out = bezier_surface_point_rational(Bx, By, Bz, u, v, weights)
    % Description:
    %   Function returns point on bezier surface
    %
    % Input:
    %   Bx, By, Bz  matrices n*m, which represents coordinates of control
    %               points
    %
    % Output:
    %   bx, by, bz  x, y, z coordinates for a point
    
    % Check input
    
    h_direct = size(Bx,2);
    v_direct = size(Bx,1);
    
    % Get control points for each vertical curve
    vertical_control_points = {};
    for i = 1:h_direct
        % This cointrol points are for vertical curve because x coordinate
        % is fixed with i.
        new_vertical_control_points = [Bx(:,i), By(:,i), Bz(:,i)];
        vertical_control_points{i} = new_vertical_control_points;
    end

    % Compute point on each vertical curve
    store_points = [];
    for i = 1:h_direct
        % Get control points
        control_points = vertical_control_points{i};
        % Get decast sheme
        decast_sheme = decast_rational( control_points, weights(:, i), v );
        % Get the point
        last = length(decast_sheme);
        point = decast_sheme{last};
        store_points = [store_points; point];
    end
    
    h_control_points = store_points;
    % Run another decast in a horisontal direction with parameter u
    decast_sheme = decast( h_control_points, u );
    last = length(decast_sheme);
    surface_point = decast_sheme{last};
    out = surface_point;
end
