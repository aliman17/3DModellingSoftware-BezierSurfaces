function backUp3(main)

    x = 0;
    df = 1;
    
    [X, Y, Z, dx, dy, dz] = edge_fit2('backUp2', 'bottom');
    [X2, Y2, Z2, dx2, dy2, dz2] = edge_fit2('backReinforce', 'top');
     
    % Edge
    Bx =  [X(1),x,x,X(4); 
          x,x,x,x;
          x,x,x,x;
          X2(1),x,x,X(4)];
    % Rectangle
    Bx = square(Bx);
    % Repair edge
    Bx(1, :) = X;
    Bx(4, :) = X2;
    

    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    % Edge
    By =  [Y(1),x,x,Y(4); 
          x,x,x,x;
          x,x,x,x;
          Y2(1),x,x,Y(4)];
    % Rectangle
    By = square(By);
    % Repair edge
    By(1, :) = Y;
    By(4, :) = Y2;

    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
        % Edge
    Bz =  [Z(1),x,x,Z(4); 
          x,x,x,x;
          x,x,x,x;
          Z2(1),x,x,Z(4)];
    % Rectangle
    Bz = square(Bz);
    % Repair edge
    Bz(1, :) = Z;
    Bz(4, :) = Z2;

    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];

    % Write matrices into file
    storeMatrices('backUp3', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
         view([0 90]);
%         view([0 0]);
    end

end