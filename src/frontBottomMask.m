function [Bx, By, Bz] = frontBottomMask(main)

    [X, Y, Z, dx, dy, dz] = edge_fit2('frontSide3', 'left');

    x = 0
    % Edge
    Bx = [X(4)-50,x,x,X(1)-50; 
          x,x,x,x;
          x,x,x,x;
          X(4),x,x,X(1)];
    % Rectangle
    Bx = square(Bx);
    % Correct edge
    Bx(4, :) = flipud(X);
    
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    mlv = 1225
    % Edge
    By = [mlv,x,x,mlv; 
          x,x,x,x;
          x,x,x,x;
          Y(4),x,x,Y(1)];
    % Rectangle
    By = square(By);
    % Correct edge
    By(4, :) = flipud(Y);
    
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
    Bz = [Z(4),x,x,Z(1); 
          x,x,x,x;
          x,x,x,x;
          Z(4),x,x,Z(1)];
    % Rectangle
    Bz = square(Bz);
    % Correct edge
    Bz(4, :) = flipud(Z);

    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
     
    % Write matrices into file
    storeMatrices('frontBottomMask', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
         view([0 0]);
%         view([0 0]);
    end
end