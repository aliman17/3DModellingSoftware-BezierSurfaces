function road(main)

    x = 0;

    Bx = [x,x,x,x; 
          x,x,x,x;
          x,x,x,x;
          x,x,x,x];
    
    
    % Edge
    Bx =  [300,x,x,6300; 
          x,x,x,x;
          x,x,x,x;
          0,x,x,6000];
    % Rectangle
    Bx = square(Bx);

    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    % Edge
    By =  [2200,x,x,3200; 
          x,x,x,x;
          x,x,x,x;
          -500,x,x,1100];
    % Rectangle
    By = square(By);
    
    By(:, 2) = By(:, 2) - 300;
    By(:, 3) = By(:, 3) + 300;

        
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
        % Edge
    Bz =  [x,x,x,x; 
          x,x,x,x;
          x,x,x,x;
          x,x,x,x];
    % Rectangle
    Bz = square(Bz)
    % Correct edge

    
    
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];

    % Write matrices into file
    storeMatrices('road', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        computeAllMetrices();
         view([0 90]);
%         view([0 0]);
    end

end