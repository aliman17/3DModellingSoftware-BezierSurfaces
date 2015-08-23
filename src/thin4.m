function thin4(main)

    x = 0;
    df = 0.2;

    [X, Y, Z, dx, dy, dz] = edge_fit2('sideLight3', 'top');
    [X2, Y2, Z2, dx2, dy2, dz2] = edge_fit2('sideUp_1', 'bottom');
    
    % Edge
    Bx = [X2(1),x,x,X2(4); 
          x,x,x,x;
          x,x,x,x;
          X(1),x,x,X(4)];
    % Rectangle
    Bx = square(Bx);
    % Correct edge
    Bx(4, :) = X;
    Bx(1, :) = X2;
    
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    % Edge
    By = [Y2(1),x,x,Y2(4); 
          x,x,x,x;
          x,x,x,x;
          Y(1),x,x,Y(4)];
    % Rectangle
    By = square(By);
    % Correct edge
    By(4, :) = Y;
    By(1, :) = Y2;
    
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
    Bz = [Z2(1),x,x,Z2(4); 
          x,x,x,x;
          x,x,x,x;
          Z(1),x,x,Z(4)];
    % Rectangle
    Bz = square(Bz);
    % Correct edge
    Bz(4, :) = Z;
    Bz(1, :) = Z2;
    Bz(2, :) = Z2;
    Bz(3, :) = Z;
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    

    % Write matrices into file
    storeMatrices('thin4', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
         view([0 90]);
%         view([0 0]);
    end

end