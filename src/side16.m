function side16(main)

    x = 0;
    df = 0.5;

    [X, Y, Z, dx, dy, dz] = edge_fit2('side14', 'bottom');
    [X2, Y2, Z2, dx2, dy2, dz2] = edge_fit2('side15', 'bottom');
    
    % Edge
    Bx =  [X(1),x,x,X(4); 
          x,x,x,x;
          x,x,x,x;
          X(1),x,x,X(4)-50];
    % Rectangle
    Bx = square(Bx);
    % Correct edge
    Bx(1, :) = X;
    Bx(2, :) = X+df*dx;
    Bx(2, 4) = X2(4)+df*dx2(4);
    
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               -10,x,x,x;
               -15,x,x,-5];
      
    % Edge
    By =  [Y(1),x,x,Y(4); 
          x,x,x,x;
          x,x,x,x;
          Y(4)+10,x,x,Y(4)+20];
    % Rectangle
    By = square(By);

    By(1, :) = Y;
    By(2, :) = Y+df*dy;
    By(2, 4) = Y2(4)+df*dy2(4);
        
    By = By + [x,x,x,x; 
               x,x,x,x;
               10,x,x,x;
               10,x,x,x];
           
        % Edge
    Bz =  [Z(1),x,x,Z(4); 
          x,x,x,x;
          x,x,x,x;
          Z(1) - 45,x,x,Z(1)- 50];
    % Rectangle
    Bz = square(Bz)
    % Correct edge
    Bz(1, :) = Z;
    Bz(2, :) = Z+df*dz;
    Bz(2, 4) = Z2(4)+df*dz2(4);
    
    
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,10];

    % Write matrices into file
    storeMatrices('side16', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        computeAllMetrices()
         view([90 0]);
%         view([0 0]);
    end

end