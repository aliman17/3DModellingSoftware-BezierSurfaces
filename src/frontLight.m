function [Bx, By, Bz] = frontLight(main)
    
    [BxB, ByB, BzB] = bonnet(true);
    % Initialize matrices
    x = 0
    Bx = [x, x, x, x; 
          x, x, x, x; 
          x, x, x, x; 
          x, x, x, x];
    By = Bx + 961;
    Bz = Bx + 340;
    Bx = Bx + 1267;
    
    % Edit edges
    tmpBx = [0, 50, 100, 210; 
             10, x, x, 225; 
             20, x, x, 240; 
             30, 100, 200, 265];
    Bx = Bx + tmpBx;
    
    tmpBy = [0, 22, 45, 73; 
             20, x, x, 90; 
             60, x, x, 110; 
             97, 118, 129, 139];
    By = By - tmpBy;
    
    tmpBz = [0, 35, 60, 110; 
             1, x, x, 111; 
             2, x, x, 112; 
             3, 45, 90, 113];
    Bz = Bz + tmpBz;
    
    Bx(1,1) = BxB(4, 1);
    By(1,1) = ByB(4, 1);
    Bz(1,1) = BzB(4, 1);
    
    % Edit middle
    Bx = coonsPatch(Bx, 'normal');
    By = coonsPatch(By, 'normal');
    Bz = coonsPatch(Bz, 'normal');
    
    tmpBx = [x, x, x, x; 
             x, 0, 0, x; 
             x, 0, 0, x; 
             x, x, x, x];
    Bx = Bx + tmpBx;
    
    tmpBy = [x, x, x, x; 
             x, 0, 0, x; 
             x, 0, 0, x; 
             x, x, x, x];
    By = By + tmpBy
    
    tmpBz = [x, x, x, x; 
             x, 0, 0, x; 
             x, 0, 0, x; 
             x, x, x, x];
    Bz = Bz + tmpBz
    
     
    % Write matrices into file
    storeMatrices('frontLight', Bx, By, Bz);
    
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
        view([0 0]);
    end
end