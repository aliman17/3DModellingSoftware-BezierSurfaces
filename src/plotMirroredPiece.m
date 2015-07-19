function [s1, s2] = plotMirroredPiece(name, middle_line_value)

    [Bx, By, Bz] = readMetrices(name);
    By_mirror = middle_line_value + (middle_line_value - By);
    s1 = bezier_surface(Bx, By, Bz);
    s2 = bezier_surface(Bx, By_mirror, Bz);
    
end