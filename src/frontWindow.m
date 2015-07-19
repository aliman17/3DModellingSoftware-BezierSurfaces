function [Bx, By, Bz] = frontWindow(main)

    Bx = [3, 110, 250, 410; 
          3, 120, 260, 410;
          15, 150, 270, 417;
          85, 200, 300, 430];

    By = [375, 375, 375, 375;
          290, 300, 320, 340;
          150, 150, 155, 160;
          17, 40, 70, 93];
      
    Bz = [0, 60, 130, 155;
          0, 60, 130, 155;
          0, 55, 125, 148;
          0, 50, 120, 138];
      
     Bx = Bx + 1590;
     By(:, 4) = equal_split(By(1, 4), By(4, 4), 4)';
     By = By + 850;
     Bz = Bz + 480;

     
    % Write matrices into file
    storeMatrices('frontWindow', Bx, By, Bz);
    
    % This enables to run from this file
    if (nargin == 0)
        car3();
    end
end