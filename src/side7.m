function side7(main)

    x = 0;
    df_alpha = 1;
    Bx = [x,x,x,x; 
          x,x,x,x;
          x,x,x,x;
          x,x,x,x];
    out = edge_fit('side5', 'bottom');
    out2 = edge_fit('side6', 'bottom');
    
    X = out(:, 1)';
    Y = out(:, 2)';
    Z = out(:, 3)';
    dx = out(:, 4)';
    dy = out(:, 5)';
    dz = out(:, 6)';
    
    % Edge
    Bx = [X;X;X;X];
    % Other two vertices
    Bx(1,4) = X(4);
    Bx(4,4) = X(4) - 50;
    Bx(1,1) = Bx(1,4) - 60;
    Bx(4,1) = Bx(4,4) - 110;
    % Rectangle
    Bx = square(Bx);
    % Correct edge
    Bx(2, 4) = Bx(1,4) + 0.3*dx(4);
    Bx = Bx + [50,-150,x,x; 
               50,-150,x,x;
               50,-150,x,x;
               50,-150,x,x];
      
    % Edge
    By = ones(4) * Y(4);
    % Other two vertices
    % Rectangle
    By = square(By);
    By(:, 3) = By(:, 4);
    By(2, 4) = By(1,4) + 0.3*dy(4);
    
    By = By + [10,6,x,x; 
               10,6,x,x;
               10,6,x,x;
               10,6,x,x];
           
    % Edge
    Bz = [Z;Z;Z;Z];
    % Other two vertices
    Bz(4,1) = out2(4, 3)-20;
    Bz(4,4) = out2(4, 3) - 20;
    Bz(1,1) = Bz(1, 4);
    % Rectangle
    Bz = square(Bz);
    % Correct edge
    Bz(2, 4) = Bz(1,4) + 0.3*dz(4);
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    

    % Write matrices into file
    storeMatrices('side7', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
         view([0 0]);
%         view([0 0]);
    end

end