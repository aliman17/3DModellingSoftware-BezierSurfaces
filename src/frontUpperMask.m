function [Bx, By, Bz] = frontUpperMask(main)

    [BxB, ByB, BzB] = frontBonnet(true);
    
    x = 0;
    Bx = [x, x, x, x; 
          x,x,x,x;
          x,x,x,x;
          x,x,x,x];
    for i=1:4
        Bx(:, i) = BxB(:, 1);
    end  
            
     tmpBx = [x,10,25,50; 
          x,10,25,50;
          x,10,25,50;
          x,10,25,50];  
      
    Bx = Bx + tmpBx;
    
    %%%%%%%%%%%%%%%% Y
    
    By = [x,x,x,x; 
          x,x,x,x;
          x,x,x,x;
          x,x,x,x];
    for i=1:4
        By(:, i) = ByB(:, 1);
    end  
    
    tmpBy = [x,x,x,x; 
          x,5,10,10;
          x,10,20,25;
          x,15,28,35];
    By = By - tmpBy;
      
    %%%%%%%%%%%%%%%% Z
    Bz = [x, x, x, x; 
          x,x,x,x;
          x,x,x,x;
          x,x,x,x];
    for i=1:4
        Bz(:, i) = BzB(:, 1);
    end  
      
    tmpBz = [x, 40, 70, 114; 
          x, 40, 70, 114;
          x, 40, 70, 114;
          x, 40, 70, 114];
      
    Bz = Bz - tmpBz;
     
     
     
%      Bx = coonsPatch(Bx, 'normal');
%      By = coonsPatch(By, 'normal');
%      Bz = coonsPatch(Bz, 'normal');
     
    % Write matrices into file
    storeMatrices('frontUpperMask', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
         view([270 0]);
%         view([0 0]);
    end
end