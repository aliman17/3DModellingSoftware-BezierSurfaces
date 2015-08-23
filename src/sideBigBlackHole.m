function sideBigBlackHole(main)

    x = 0;
    df_alpha = 1;
    Bx = [x,x,x,x; 
          x,x,x,x;
          x,x,x,x;
          x,x,x,x];
      
    out4 = edge_fit('side6', 'right');
    out5 = edge_fit('side13', 'left');
    
    X4 = out4(:, 1);
    Y4 = out4(:, 2);
    Z4 = out4(:, 3);
    
    X5 = out5(:, 1);
    Y5 = out5(:, 2);
    Z5 = out5(:, 3);
    
    % Edge
    Bx = [X4,X4,X5,X5];
    % Rectangle
    Bx = square(Bx);
    % Correct edge
    Bx(:, 1) = X4;
    Bx(:, 4) = X5;
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    % Edge
    By = [Y4,Y4,Y5,Y5];

    % Rectangle
    By = square(By);
    By(:, 1) = Y4;
    By(:, 4) = Y5;
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
    % Edge
    Bz = [Z4,Z4,Z5,Z5];
    % Rectangle
    Bz = square(Bz);
    Bz(:, 1) = Z4;
    Bz(:, 4) = Z5;
    
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    

    % Write matrices into file
    storeMatrices('sideBigBlackHole', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
         view([0 0]);
%         view([0 0]);
    end

end