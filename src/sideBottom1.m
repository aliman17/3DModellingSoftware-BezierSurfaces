function sideBottom1(main)

    x = 0;
    df_alpha = 1;
    df = 0.3;
    Bx = [x,x,x,x; 
          x,x,x,x;
          x,x,x,x;
          x,x,x,x];
      
    out2 = edge_fit('sideUpBottom', 'bottom');
    [X, Y, Z, dx, dy, dz] = edge_fit2('side7', 'bottom');
    
    % Edge
    Bx = [out2(1,1),x,x,out2(4, 1); 
               x,x,x,x;
               x,x,x,x;
               out2(1,1),x,x,out2(4,1)];
    % Rectangle
    Bx = square(Bx);
    % Correct edge
    Bx(2, 4) = Bx(1, 4) + df*dx(4);
    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    % Edge
    By = [out2(1,2),x,x,out2(4, 2); 
               x,x,x,x;
               x,x,x,x;
               out2(1,2),x,x,out2(4,2)];
    % Rectangle
    By = square(By);
    % Correct edge
    By(2, 4) = By(1, 4) + df*dy(4);
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
    % Edge
    Bz = [out2(1,3),x,x,out2(4, 3); 
               x,x,x,x;
               x,x,x,x;
               out2(1,3),x,x,out2(1,3) + 20];
    % Rectangle
    Bz = square(Bz);
    % Correct edge
    Bz(2, 4) = Bz(1, 4) + df*dz(4);
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    

    % Write matrices into file
    storeMatrices('sideBottom1', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
         view([0 0]);
%         view([0 0]);
    end

end