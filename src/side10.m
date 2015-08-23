function side10(main)

    x = 0;
    df_alpha = 1;
    
    [X, Y, Z, dx, dy, dz] = edge_fit2('side9', 'bottom');
    
   % Edge
    Bx = [X(1),x,x,X(4); 
          x,x,x,x;
          x,x,x,x;
          X(1) + 30,x,x,X(4)-60];
    % Rectangle
    Bx = square(Bx);
    % Correct edge
    Bx(1, :) = X;
    Bx(2, :) = X + dx;
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    % Edge
    By = [Y(1),x,x,Y(4); 
          x,x,x,x;
          x,x,x,x;
          Y(1) - 20,x,x,Y(4)-20];
    % Rectangle
    By = square(By);
    % Correct edge
    By(1, :) = Y;
    By(2, :) = Y + dy;
    
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
           
    Bz = [Z(1),x,x,Z(4); 
          x,x,x,x;
          x,x,x,x;
          Z(1)-70,x,x,Z(4)-70];
    % Rectangle
    Bz = square(Bz);
    % Correct edge
    Bz(1, :) = Z;
    Bz(2, :) = Z + dz;
    
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,50,50,x;
               x,70,70,x];
      
    

    % Write matrices into file
    storeMatrices('side10', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        axis([600 3000 0 2000 0 2000])
        car3();
         view([0 0]);
%         view([0 0]);
    end

end