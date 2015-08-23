function sideWindow3(main)

    x = 0;
    df = [0, 0.3, 0.3, 0];
    [X, Y, Z, dx, dy, dz] = edge_fit2('sideWindow2', 'right');
    [X2, Y2, Z2, dx2, dy2, dz2] = edge_fit2('backReinforce', 'bottom');

    
    % Edge
    Bx = [X,X2',X2',X2'];
   
    % Edge
    By = [Y,Y2',Y2',Y2'];

    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
    Bz = [Z,Z2',Z2',Z2'];

    
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    

    % Write matrices into file
    storeMatrices('sideWindow3', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
         view([0 0]);
%         view([0 0]);
    end

end