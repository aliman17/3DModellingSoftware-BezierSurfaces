function [Bx, By, Bz] = betweenFrontWheels()

    Bx = [0, 100, 200, 300; 
          0, 100, 200, 300;
          0, 100, 200, 300];
    convex = 30
    By = [0, convex, convex, 0;
          100, 100, 100, 100;
          200, 200-convex, 200-convex, 200];
    Bz = [0, 0, 0, 0;
          0, 0, 0, 0;
          0, 0, 0, 0];

end