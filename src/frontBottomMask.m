function [Bx, By, Bz] = frontBottomMask(main)

    [BxB, ByB, BzB] = frontUpperMask(true);
    
    x = 0;
    Bx = [x,x,x,x; 
          x,x,x,x;
          x,x,x,x;
          x,x,x,x];
    for i=1:4
        Bx(:, i) = BxB(:, 4);
    end  
      
    tmpBx = [40,20,10,x; 
          40,20,10,x;
          40,20,10,x;
          40,20,10,x];
      
    Bx = Bx - tmpBx;
    
    %%%%%%%%%%%%%%%% Y
    
    By = [x,x,x,x; 
          x,x,x,x;
          x,x,x,x;
          x,x,x,x];
    for i=1:4
        By(:, i) = ByB(:, 4);
    end  
    
    tmpBy = [x,x,x,x; 
          x,x,x,x;
          x,x,x,x;
          x,x,x,x];
      
    By = By + tmpBy;
      
    %%%%%%%%%%%%%%%% Z
    Bz = [x, x, x, x; 
          x,x,x,x;
          x,x,x,x;
          x,x,x,x];
    for i=1:4
        Bz(:, i) = BzB(:, 4);
    end  
    
    tmpBz = [20,10,x,x; 
          20,10,x,x;
          20,10,x,x;
          20,10,x,x];
      
    Bz = Bz - tmpBz;
     
     
     
%      Bx = coonsPatch(Bx, 'normal');
%      By = coonsPatch(By, 'normal');
%      Bz = coonsPatch(Bz, 'normal');
     
    % Write matrices into file
    storeMatrices('frontBottomMask', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
         view([0 0]);
%         view([0 0]);
    end
end