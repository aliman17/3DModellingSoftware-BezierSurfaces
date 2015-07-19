function out = car2()
    figure;
    hold on
    
    [Bx, By, Bz] = betweenFrontLightsUpper();
    bezier_surface(Bx, By, Bz);

    [Bx, By, Bz] = besideFrontLight();
    bezier_surface(Bx, By, Bz);
    
    [Bx, By, Bz] = frontWindow();
    Bx = Bx + 500;
    bezier_surface(Bx, By, Bz);
    

    % shading interp
    xlim([-100 500])
    ylim([-250 250])
    zlim([-250 250])
    hold off
end
