function [Bx, By, Bz] = testCoons()

    x = 0
     Bx = [0, 100, 200, 300; 
          0, x, x, 300;
          0, x, x, 300;
          0, 100, 200, 300];
    
    By = [0, 0, 0, 0;
          50, x, x, 50;
          100, x, x, 200;
          200, 100, 200, 300];
    Bz = [0, 0, 0, 0;
          0, x, x, 0;
          0, x, 1000, -200;
          0, 100, 200, 500];
      
      BxMiddle = [0, 100, 200, 300; 
          0, 1000, 1000, 300;
          0, 1000, 1000, 300;
          0, 100, 200, 300];
      
      Bx = coonsPatch(Bx, 'normal')
      By = coonsPatch(By, 'normal')
      Bz = coonsPatch(Bz, 'normal')
      
     bezier_surface(Bx, By, Bz);

end