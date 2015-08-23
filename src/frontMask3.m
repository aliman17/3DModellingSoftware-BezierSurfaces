function [Bx, By, Bz] = frontMask3(main)

    [X, Y, Z, dx, dy, dz] = edge_fit2('frontMask2', 'bottom');
    
    x = 0;
    % Edge
    Bx = [X(1),x,x,X(4); 
          x,x,x,x;
          x,x,x,x;
          X(1),x,x,X(4)];
    % Rectangle
    Bx = square(Bx);
    % Correct edge
    Bx(1, :) = X;
    Bx(:, 2) = Bx(:, 1);
    
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    % Edge
    By = [Y(1),x,x,Y(4); 
          x,x,x,x;
          x,x,x,x;
          Y(1),x,x,Y(4)];
    % Rectangle
    By = square(By);
    % Correct edge
    By(1, :) = Y;
    
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
    Bz = [Z(1),x,x,Z(4); 
          x,x,x,x;
          x,x,x,x;
          Z(1)-60,x,x,Z(4)-60];
    % Rectangle
    Bz = square(Bz);
    % Correct edge
    Bz(1, :) = Z;
    
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
     
     

     
    % Write matrices into file
    storeMatrices('frontMask3', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
         view([270 0]);
%         view([0 0]);
    end
end