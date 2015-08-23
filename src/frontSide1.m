function frontSide1(main)

    x = 0;
    df = 0.5;

    [X, Y, Z, dx, dy, dz] = edge_fit2('sideLight', 'bottom');

    
    % Edge
    Bx = [X(1),x,x,X(4); 
          x,x,x,x;
          x,x,x,x;
          X(1)-50,x,x,X(4)-18];
    % Rectangle
    Bx = square(Bx);
    % Correct edge
    Bx(1, :) = X;
    Bx(2, :) = X + df*dx;
    
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,2];
      
    % Edge
    By = [Y(1),x,x,Y(4); 
          x,x,x,x;
          x,x,x,x;
          Y(1),x,x,Y(4)];
    % Rectangle
    By = square(By);
    % Correct edge
    By(1, :) = Y;
    By(2, :) = Y + df*dy;
    By(3, :) = Y + 1.1*df*dy;
    By(4, :) = Y + 1.3*df*dy;
    
    By = By + [x,x,x,x; 
               x,x,x,x;
               5,x,x,x;
               10,x,x,x];
           
    Bz = [Z(1),x,x,Z(4); 
          x,x,x,x;
          x,x,x,x;
          Z(1) - 35,x,x,Z(4)-40];
    % Rectangle
    Bz = square(Bz);
    % Correct edge
    Bz(1, :) = Z;
    Bz(2, :) = Z + df*dz;

    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    

    % Write matrices into file
    storeMatrices('frontSide1', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
         view([0 0]);
%         view([0 0]);
    end

end