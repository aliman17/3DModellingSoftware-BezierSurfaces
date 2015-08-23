function backUp2(main)

    x = 0;
    df = 1;
    df2 = [1, 0.3, 0.1, 0];
    [X, Y, Z, dx, dy, dz] = edge_fit2('backReinforce', 'top');
    
     middle_line_value = 1225
     mld = middle_line_value
     
    % Edge
    Bx =  [X(1),x,x,X(4); 
          x,x,x,x;
          x,x,x,x;
          X(1),x,x,X(4)];
    % Rectangle
    Bx = square(Bx);

    Bx = Bx + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
      
    % Edge
    By =  [mld,x,x,mld; 
          x,x,x,x;
          x,x,x,x;
          Y(4)+50,x,x,Y(4)];
    % Rectangle
    By = square(By);

    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
        % Edge
    Bz =  [Z(4)+60,x,x,Z(4); 
          x,x,x,x;
          x,x,x,x;
          Z(4)+60,x,x,Z(4)];
    % Rectangle
    Bz = square(Bz)

    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];

    % Write matrices into file
    storeMatrices('backUp2', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
         view([0 90]);
%         view([0 0]);
    end

end