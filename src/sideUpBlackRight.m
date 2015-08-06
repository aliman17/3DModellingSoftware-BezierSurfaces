function sideUpBlackRight(main)

    x = 0;
    df_alpha = 1;
    Bx = [x,x,x,x; 
          x,x,x,x;
          x,x,x,x;
          x,x,x,x];
      
    out4 = edge_fit('sideUp3', 'bottom');
    out5 = edge_fit('thin5', 'top');
    
    X4 = out4(:, 1)';
    Y4 = out4(:, 2)';
    Z4 = out4(:, 3)';
    
    dx4 = out4(:, 4)';
    dy4 = out4(:, 5)';
    dz4 = out4(:, 6)';
    
    X5 = out5(:, 1)';
    Y5 = out5(:, 2)';
    Z5 = out5(:, 3)';
    
    dx5 = out5(:, 4)';
    dy5 = out5(:, 5)';
    dz5 = out5(:, 6)';
    
    % Edge
    Bx = [X4;X4;X4;X4];
    % Other two vertices
    Bx(1, :) = X4;
    Bx(4, :) = X5;
    % Rectangle
    Bx = square(Bx);
    % Correct edge

    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    % Edge
    By = [Y4;Y4;Y4;Y4];
    % Other two vertices
   	By(1, :) = Y4;
    By(4, :) = Y5;
    % Rectangle
    By = square(By);
    % Correct edge
    
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
    % Edge
    Bz = [Z4;Z4;Z4;Z4];
    % Other two vertices
    Bz(1, :) = Z4;
    Bz(4, :) = Z5;
    % Rectangle
    Bz = square(Bz);
    % Correct edge
    
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    

    % Write matrices into file
    storeMatrices('sideUpBlackRight', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
         view([0 0]);
%         view([0 0]);
    end

end