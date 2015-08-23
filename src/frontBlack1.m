function [Bx, By, Bz] = frontBlack1(main)

    [X, Y, Z, dx, dy, dz] = edge_fit2('frontBonnet', 'left');
    [X2, Y2, Z2, dx2, dy2, dz2] = edge_fit2('frontSide2', 'left');
    
    x = 0;
    % Edge
    Bx = [X(1)+40,x,x,X(4); 
          x,x,x,x;
          x,x,x,x;
          X(1)+40,x,x,X2(4)];
    % Rectangle
    Bx = square(Bx);
    % Correct edge
    Bx(:, 4) = X2;
    
    Bx = Bx + [x,x,x,x; 
               x,5,x,x;
               x,10,5,x;
               x,15,8,x];
      
    % Edge
    By = [Y(1),x,x,Y(4); 
          x,x,x,x;
          x,x,x,x;
          Y(1),x,x,Y2(4)];
    % Rectangle
    By = square(By);
    % Correct edge
    By(:, 4) = Y2;
    
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
    Bz = [Z(1),x,x,Z(4); 
          x,x,x,x;
          x,x,x,x;
          Z2(4),x,x,Z2(4)];
    % Rectangle
    Bz = square(Bz);
    % Correct edge
    Bz(:, 4) = Z2;
    
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
     
     

     
    % Write matrices into file
    storeMatrices('frontBlack1', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
         view([270 0]);
%         view([0 0]);
    end
end