function [s1, s2] = plotMirroredPiece(name, middle_line_value)

    [Bx, By, Bz] = readMetrices(name);
    By_mirror = middle_line_value + (middle_line_value - By);
    s1 = bezier_surface(Bx, By, Bz);
    s2 = bezier_surface(Bx, By_mirror, Bz);
    color = [1 0.5 0.0]
    set(s1, 'FaceColor',[1 1 1],'FaceAlpha',1);
    set(s2, 'FaceColor',[1 0.5 0.0],'FaceAlpha',1);
    set(s1, 'FaceColor',color,'FaceAlpha',1, 'EdgeColor','none');
    set(s2, 'FaceColor',color,'FaceAlpha',1, 'EdgeColor','none');
end