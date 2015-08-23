function sideLight(main)

    [X, Y, Z, dx, dy, dz] = edge_fit2('frontLight', 'bottom');

    x = 0;
    % Edge
    Bx = [X(4),1545,1555,1565;
1438.3,1468.3,1508.3,1535.3;
1341.7,1401.7,1466.7,1524.7;
X(1),1335,1425,1509];
    Bx(:, 1) = fliplr(X);
   
    % Edge
    By = [813,x,x,780; 
          x,x,x,x;
          x,x,x,x;
          Y(1)-15,x,x,780];
    % Rectangle
    By = square(By);
    
    By = By + [x,x,-3,x; 
               x,x,-5,x;
               x,x,-7,x;
               x,-5,-10,x];
    By(:, 1) = fliplr(Y) - 15;
    By(1, 1) =  By(1, 1) +4;
           
    % Edge
    Bz = [450,420,410,400;
420,397,388.5,383;
380,373,371.5,370;
Z(1),Z(1),Z(1),Z(1)];
      Bz(:, 1) = fliplr(Z);

    % Write matrices into file
    storeMatrices('sideLight', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        computeAllMetrices()
         view([0 90]);
%         view([0 0]);
    end

end