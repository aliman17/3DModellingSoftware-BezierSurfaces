function out = bezier_surface(Bx, By, Bz)
    
    u = 0:0.1:1;
    v = 0:0.1:1;
    
    u_len = length(u);
    v_len = length(v);
    
    BX = zeros(v_len, u_len);
    BY = zeros(v_len, u_len);
    BZ = zeros(v_len, u_len);
    
    for t1 = 1:u_len
        for t2 = 1:v_len
            % Get a point
            point = bezier_surface_point(Bx, By, Bz, u(t1), v(t2));
            BX(t1, t2) = point(1);
            BY(t1, t2) = point(2);
            BZ(t1, t2) = point(3);
        end
    end

    out = surf(BX, BY, BZ);
    %shading flat
    %shading interp
    %shading faceted
end