function out = car()
    figure;
    hold on
    
    % UNDERCARRIAGE
    [Bx, By, Bz] = undercarriage();
    Bx = Bx + 100;
    bezier_surface(Bx, By, Bz);

    [Bx, By, Bz] = undercarriageForward();
    bezier_surface(Bx, By, Bz);
    
    [Bx, By, Bz] = undercarriageBackward();
    Bx = Bx + 500;
    bezier_surface(Bx, By, Bz);
    

    [Bx, By, Bz] = betweenFrontWheels();
    Bx = Bx/4 + 25;
    bezier_surface(Bx, By, Bz);
    
    [Bx, By, Bz] = test();
    Bx = Bx/4 + 500;
    By = By + 200;
    weights = [0.9, 0.1, 0.200, 0.100; 
          0.9, 0.100, 0.200, 0.100;
          0.4, 0.100, 0.200, 0.300];
    bezier_surface_rational(Bx, By, Bz, weights);
    % shading interp
    hold off
end
