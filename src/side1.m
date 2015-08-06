function side1(main)

    x = 0;
    df_alpha = 1;
    Bx = [1879,x,x,2229; 
          x,x,x,x;
          x,x,x,x;
          1856,x,x,2206];
    
    % Rectangle
    Bx = square(Bx);
    
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    % Edge
    By = [800,x,x,810; 
          x,x,x,x;
          x,x,x,x;
          787,x,x,787];
    % Rectangle
    By = square(By);
    
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
    % Edge
    Bz = [440,x,x,470; 
               x,x,x,x;
               x,x,x,x;
               390,x,x,412];
    % Rectangle
    Bz = square(Bz);

    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    

    % Write matrices into file
    storeMatrices('side1', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        %car3();
         view([0 90]);
%         view([0 0]);
    end

end