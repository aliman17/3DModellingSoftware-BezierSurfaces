function back7(main)

    x = 0;

    [X, Y, Z, dx, dy, dz] = edge_fit2('back0', 'bottom');
    [X2, Y2, Z2, dx2, dy2, dz2] = edge_fit2('back6', 'top');

%     X = fliplr(X);

%     Y = fliplr(Y);
%     Z = fliplr(X);
    % Edge
    Bx = [X(4)-20,x,x,X2(4)-45; 
          x,x,x,x;
          x,x,x,x;
          X(1),x,x,X2(4)];
    % Rectangle
    Bx = square(Bx)

    Bx(4, :) = X2;
    Bx(:, 3) = Bx(:, 4);
    
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x]
      
    mdl = 1225;       
    % Edge
    By = [Y(4),x,x,mdl; 
          x,x,x,x;
          x,x,x,x;
          Y(1),x,x,mdl];
    % Rectangle
    By = square(By)
    By(:, 1) = fliplr(Y);
    By(4, :) = Y2;
    
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x]
    
    Bz = [Z(4)+10,x,x,Z(4)+10; 
          x,x,x,x;
          x,x,x,x;
          Z(1),x,x,Z2(4)];
    % Rectangle
    Bz = square(Bz)
    Bz(:, 1) = fliplr(Z);
    Bz(4, :) = Z2
  
    Bz = Bz + [10,10,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x]
      
    

    % Write matrices into file
    storeMatrices('back7', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        axis([600 3000 0 2000 0 1000])
        computeAllMetrices();
         view([90 0]);
%         view([0 0]);
    end

end