function backUp1()

    x = 0;
    df = 0.3;

    [X, Y, Z, dx, dy, dz] = edge_fit2('sideUpBlackRight', 'bottom');
    [X2, Y2, Z2, dx2, dy2, dz2] = edge_fit2('sideUpBlackLeft', 'top');
    
    % Edge
    Bx = [X2(4),x,x,X2(4) + 460; 
          x,x,x,x;
          x,x,x,x;
          X(4),x,x,X(4) + 430];
    % Rectangle
    Bx = square(Bx);
    % Correct edge
    
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    % Edge
    By = [Y2(4),x,x,Y2(4)+60; 
          x,x,x,x;
          x,x,x,x;
          Y(4),x,x,Y(4)+30];
    % Rectangle
    By = square(By);
    
    By = By + [x,15,13,x; 
               x,7,4,x;
               x,x,x,x;
               x,x,x,x];
           
    Bz = [Z2(4),x,x,Z2(4); 
          x,x,x,x;
          x,x,x,x;
          Z(4),x,x,Z(4)];
    % Rectangle
    Bz = square(Bz);
    % Correct edge

    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    

    % Write matrices into file
    storeMatrices('backUp1', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
         view([0 90]);
%         view([0 0]);
    end

end