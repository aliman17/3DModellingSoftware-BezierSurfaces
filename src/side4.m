function side4(main)

    x = 0;
    df_alpha = 1;
    Bx = [x,x,x,x; 
          x,x,x,x;
          x,x,x,x;
          x,x,x,x];
      
    out4 = edge_fit('side3', 'bottom');
    out5 = edge_fit('side2', 'right');
    
    X4 = out4(:, 1)';
    Y4 = out4(:, 2)';
    Z4 = out4(:, 3)';
    
    dx4 = out4(:, 4)';
    dy4 = out4(:, 5)';
    dz4 = out4(:, 6)';
    
    X5 = out5(:, 1);
    Y5 = out5(:, 2);
    Z5 = out5(:, 3);
    
    dx5 = out5(:, 4);
    dy5 = out5(:, 5);
    dz5 = out5(:, 6);
    
    % Edge
    Bx = [X4;X4;X4;X4];
    % Other two vertices
    Bx(1, :) = X4;
    Bx(:, 1) = X5;
    Bx(4,4) = Bx(1, 4) - 80;
    % Rectangle
    Bx = square(Bx);
    % Correct edge
    Bx(1, :) = X4;
    Bx(:, 1) = X5;
    Bx(2, :) = X4 + dx4;
    Bx(:, 2) = X5 + df_alpha*dx5;

    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    % Edge
    By = [Y4;Y4;Y4;Y4];
    % Other two vertices

    % Correct edge
    By(:, 1) = Y5;
    By(:, 2) = Y5 + df_alpha*dy5;
    
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
    % Edge
    Bz = [Z4;Z4;Z4;Z4];
    % Other two vertices
    Bz(4,1) = Z5(4)
    Bz(4,4) = Bz(4, 1) + 20;
    % Rectangle
    Bz = square(Bz);
    % Correct edge
    Bz(:, 1) = Z5;
    Bz(:, 2) = Z5 + dz5;
    Bz(1, :) = Z4;
    Bz(2, :) = Z4 + dz4;
    
    Bz = Bz + [x,x,-5,-7; 
               x,x,-3,-5;
               x,x,x,x;
               x,x,x,x];
      
    

    % Write matrices into file
    storeMatrices('side4', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        computeAllMetrices();
         view([0 0]);
%         view([0 0]);
    end

end