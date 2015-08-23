function side11(main)

    x = 0;
    df = 0.2;
    
    [X, Y, Z, dx, dy, dz] = edge_fit2('side10', 'left');
   % Edge
    Bx = [X(1),x,x,X(4); 
          x,x,x,x;
          x,x,x,x;
          2636,x,x,2666];
    % Rectangle
    Bx = square(Bx);
    % Correct edge
    Bx(1, :) = X;
    Bx(2, :) = X+df*dx;

    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               0,x,-10,-20;
               x,x,x,x];
      
    % Edge
    By = [Y(1),x,x,Y(4); 
          x,x,x,x;
          x,x,x,x;
          787,x,x,787];
    % Rectangle
    By = square(By);
    % Correct edge
    By(1, :) = Y;
    By(2, :) = Y + df*dy;
    
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
           
    Bz = [Z(1),x,x,Z(4); 
          x,x,x,x;
          x,x,x,x;
          250.67,x,x,250.67];
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
    storeMatrices('side11', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        axis([600 3000 0 2000 0 2000])
        car3();
         view([0 0]);
%         view([0 0]);
    end

end