function sideUpBottom(main)

    x = 0;
    df_alpha = 1;
    Bx = [x,x,x,x; 
          x,x,x,x;
          x,x,x,x;
          x,x,x,x];
      
    out2 = edge_fit('side2', 'bottom');
    out6 = edge_fit('side6', 'bottom');
    out7 = edge_fit('side7', 'bottom');
    
    
    % Edge
    Bx = [out2(1,1),x,x,out6(4, 1); 
               x,x,x,x;
               x,x,x,x;
               out2(1,1),x,x,out7(4,1)];
    % Rectangle
    Bx = square(Bx);
    % Correct edge

    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    % Edge
    By = [out2(1,2),x,x,out6(4, 2); 
               x,x,x,x;
               x,x,x,x;
               out2(1,2),x,x,out7(4,2)];
    % Rectangle
    By = square(By);
    % Correct edge
    
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
    % Edge
    Bz = [out2(1,3),x,x,out6(4, 3); 
               x,x,x,x;
               x,x,x,x;
               out2(1,3),x,x,out7(4,3)];
    % Rectangle
    Bz = square(Bz);
    % Correct edge
    
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    

    % Write matrices into file
    storeMatrices('sideUpBottom', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
         view([0 0]);
%         view([0 0]);
    end

end