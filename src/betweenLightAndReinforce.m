function [Bx, By, Bz] = betweenLightAndReinforce(main)
    
    x = 0;
    df = [0.7; 1; 0.7; 0.5];
    df2 = 0.7;
    df3 = [0.2, 0.3, 0.4, 0.5];
    [X, Y, Z, dx, dy, dz] = edge_fit2('frontLight', 'right');
    [X2, Y2, Z2, dx2, dy2, dz2] = edge_fit2('sideUp_1', 'left');
%     [X3, Y3, Z3, dx3, dy3, dz3] = edge_fit2('bonnetUnderGutter', 'bottom');
    
       % Edge
    Bx = [X(1),x,x,X2(1); 
          x,x,x,x;
          x,x,x,x;
          X(4),x,x,X2(4)];
    % Rectangle
    Bx = square(Bx);
    % Correct edge
    Bx(:, 1) = X;
    Bx(:, 2) = X + df.*dx;
    Bx(:, 4) = X2;
    Bx(:, 3) = X2 + df2*dx2;
    Bx(:, 4) = Bx(:, 4);
%     Bx(1, :) = X3;
    
%     Bx(2, 2) = X3(2) + df3(2)*dx3(2); 
%     Bx(2, 3) = X3(3) + df3(3)*dx3(3); 
    
        
    Bx = Bx + [x,x,x,-2; 
               x,x,x,-2;
               x,x,x,-2;
               x,x,x,-2];
      
    % Edge
    By = [Y(1),x,x,Y2(1); 
          x,x,x,x;
          x,x,x,x;
          Y(4),x,x,Y(4)];
    % Rectangle
    By = square(By);
    % Correct edge
    By(:, 1) = Y;
    By(:, 2) = Y + df.*dy;
    By(:, 4) = Y2;
    By(:, 3) = Y2 + df2*dy2;
%     By(1, :) = Y3;
%     
%     By(2, 2) = Y3(2) + df3(2)*dy3(2); 
%     By(2, 3) = Y3(3) + df3(3)*dy3(3); 
    
    By = By + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
           
    Bz = [Z(1),x,x,Z2(1); 
          x,x,x,x;
          x,x,x,x;
          Z(4),x,x,Z2(4)];
    % Rectangle
    Bz = square(Bz);
    % Correct edge
    Bz(:, 1) = Z;
    Bz(:, 2) = Z + df.*dz;
    Bz(:, 4) = Z2;
    Bz(:, 3) = Z2 + df2*dz2;
%     Bz(1, :) = Z3; 
%     
%     Bz(2, 2) = Z3(2) + df3(2)*dz3(2); 
%     Bz(2, 3) = Z3(3) + df3(3)*dz3(3); 
%     
    Bz = Bz + [x,x,x,x; 
               x,x,x,x;
               x,x,x,x;
               x,x,x,x];
     
    % Write matrices into file
    storeMatrices('betweenLightAndReinforce', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
        view([0 0]);
    end
end