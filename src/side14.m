function side14(main)

    x = 0;
    df = 0.3;

    [X, Y, Z, dx, dy, dz] = edge_fit2('side10', 'right');
    
    X = flipud(X);
    Y = flipud(Y) ;
    Z = flipud(Z);
    dx = flipud(dx); 
    dy = flipud(dy); 
    dz = flipud(dz);
    % Edge
    Bx =  [X(4),x,x,X(1); 
          x,x,x,x;
          x,x,x,x;
          X(4)-10,x,x,X(4)+ 90];
    % Rectangle
    Bx = square(Bx);
    % Correct edge
    Bx(1, :) = X;
    Bx(2, :) = X+df*dx;
    
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,20;
               x,x,x,x];
      
    % Edge
    By =  [Y(4),x,x,Y(1); 
          x,x,x,x;
          x,x,x,x;
          Y(4)+30,x,x,Y(4)+110];
    % Rectangle
    By = square(By);

    By(1, :) = Y;
    By(2, :) = Y+df*dy;
        
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
        % Edge
    Bz =  [Z(4),x,x,Z(1); 
          x,x,x,x;
          x,x,x,x;
          220.67,x,x,250.67];
    % Rectangle
    Bz = square(Bz)
    % Correct edge
    Bz(1, :) = Z;
    Bz(2, :) = Z+df*dz;
    
    
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];

    % Write matrices into file
    storeMatrices('side14', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        computeAllMetrices()
         view([90 0]);
%         view([0 0]);
    end

end