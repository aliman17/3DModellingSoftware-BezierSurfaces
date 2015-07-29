function [Bx, By, Bz] = frontBonnet(main)

    [BxB, ByB, BzB] = bonnet(true);
    [BxL, ByL, BzL] = frontLight(true);
    
    x = 0;
    Bx = [x, x, x, x; 
          x,x,x,x;
          x,x,x,x;
          x,x,x,x];
    for i=1:4
        Bx(:, i) = BxB(:, 1);
    end  
      
    tmpBx = [-33, -20, -10, -2; 
          -33, -20, -10, -2;
          -40, -20, -15, -10;
          -20,-5, 10,x];
      
    Bx = Bx + tmpBx;
    Bx(4, 4) = BxL(4, 1);
    
    %%%%%%%%%%%%%%%% Y
    
    By = [x,x,x,x; 
          x,x,x,x;
          x,x,x,x;
          x,x,x,x];
    for i=1:4
        By(:, i) = ByB(:, 1);
    end  
    
    tmpBy = [x,x,x,x; 
          x,x,x,x;
          x,x,x,x;
          86,92,94,95];
      
    By = By - tmpBy;
    By(4, 4) = ByL(4, 1);
      
    %%%%%%%%%%%%%%%% Z
    Bz = [x, x, x, x; 
          x,x,x,x;
          x,x,x,x;
          x,x,x,x];
    for i=1:4
        Bz(:, i) = BzB(:, 1);
    end  
    
    tmpBz = [32, 15, 7, x; 
          32, 15, 7, x;
          32, 15, 7, x;
          32, 15, 7, x;];
      
    Bz = Bz - tmpBz;
    Bz(4, 4) = BzL(4, 1);
     
     
     
%      Bx = coonsPatch(Bx, 'normal');
%      By = coonsPatch(By, 'normal');
%      Bz = coonsPatch(Bz, 'normal');
     
    % Write matrices into file
    storeMatrices('frontBonnet', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
        view([270 0]);
    end
end