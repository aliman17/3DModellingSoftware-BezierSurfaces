function frontSide3(main)

    x = 0;
    df = 1;

    [X, Y, Z, dx, dy, dz] = edge_fit2('frontSide2', 'bottom');

    
    % Edge
    Bx = [X(1),x,x,X(4); 
          x,x,x,x;
          x,x,x,x;
          X(1)-55,x,x,X(4)];
    % Rectangle
    Bx = square(Bx);
    % Correct edge
    Bx(1, :) = X;
    Bx(2, :) = X + df*dx;
    
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    % Edge
    By = [Y(1),x,x,Y(4); 
          x,x,x,x;
          x,x,x,x;
          Y(1)+60,x,x,Y(4)+50];
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
          Z(1) - 45,x,x,Z(4)-45];
    % Rectangle
    Bz = square(Bz);
    % Correct edge
    Bz(1, :) = Z;

    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    

    % Write matrices into file
    storeMatrices('frontSide3', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
         view([0 0]);
%         view([0 0]);
    end

end