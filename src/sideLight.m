function sideLight(main)

    x = 0;
       
    Bx = [20,x,x,50; 
          x,x,x,x;
          x,x,x,x;
          -270,x,x,0];
    Bx(4, :) = equal_split(Bx(4,1), Bx(4,4), 4) %bottom
    Bx(:, 1) = equal_split(Bx(1,1), Bx(4,1), 4) %left 
    Bx(1, :) = equal_split(Bx(1,1), Bx(1,4), 4) %top
    Bx(:, 4) = equal_split(Bx(1,4), Bx(4,4), 4) %right
    Bx = coons(Bx, 'normal');
    Bx = Bx + 1515;
    
    Bx = Bx + [x,x,x,x; 
               x,x,x,-10;
               x,x,x,-5;
               x,x,x,x];
      
    By = -[20,14,7,0; 
          25,x,x,0;
          30,x,x,0;
          30,20,10,0];
      
    By = coons(By, 'normal');
    By = By + 800;
      
    Bz = [100,70,60,50; 
          70,x,x,30;
          30,x,x,20;
          -38,-20,-10,0];
      
    Bz = coons(Bz, 'normal');
    Bz = Bz + 350;
    
    % Write matrices into file
    storeMatrices('sideLight', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
         view([0 0]);
%         view([0 0]);
    end

end