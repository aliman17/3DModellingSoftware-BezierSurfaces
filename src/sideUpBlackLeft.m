function sideUpBlackLeft()

    x = 0;
    df = 0.3;

    [X, Y, Z, dx, dy, dz] = edge_fit2('sideUp3', 'top');
    [X2, Y2, Z2, dx2, dy2, dz2] = edge_fit2('backUp1', 'left');
    
    % Edge
    Bx = [X(1),x,x,X2(1); 
          x,x,x,x;
          x,x,x,x;
          X(1),x,x,X(4)];
    % Rectangle
    Bx = square(Bx);
    % Correct edge
    Bx(4, :) = X;
    Bx(1, 3) = X2(1)+dx2(1);
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    % Edge
    By = [Y(1),x,x,Y2(1); 
          x,x,x,x;
          x,x,x,x;
          Y(1),x,x,Y(4)];
    % Rectangle
    By = square(By);
    % Correct edge
    By(4, :) = Y;
    By(1, 3) = Y2(1)+dy2(1);
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
    Bz = [Z(1),x,x,Z2(1); 
          x,x,x,x;
          x,x,x,x;
          Z(1),x,x,Z(4)];
    % Rectangle
    Bz = square(Bz);
    % Correct edge
    Bz(4, :) = Z;
    Bz(1, 3) = Z2(1)+dz2(1);
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    

    % Write matrices into file
    storeMatrices('sideUpBlackLeft', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
         view([0 0]);
%         view([0 0]);
    end

end