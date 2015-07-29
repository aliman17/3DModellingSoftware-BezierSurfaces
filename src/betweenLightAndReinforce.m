function [Bx, By, Bz] = betweenLightAndReinforce(main)

    %[BxR, ByR, BzR] = frontReinforce(true);
    [BxFL, ByFL, BzFL] = frontLight(true);
    [BxFU, ByFU, BzFU] = bonnetUnderGutter(true);
    
    x = 0;
    Bx = [BxFU(4, :);BxFU(4, :);BxFU(4, :);BxFU(4, :);]
    tmpBx = [x, x, x, x; 
          x,x,x,10;
          x,10,20,30;
          x,30,30,50];
      
    Bx = Bx - tmpBx
    
    % Going from the front window
    By = [x, x, x, x; 
          x,10,10,10;
          x,20,20,20;
          x,50,50,45];
      
    Bz = [x, x, x, x; 
          x,x,x,x;
          x,x,x,x;
          x,x,x,x];

     Bx(:,1) = BxFL(:,4);
     
     By = [ByFU(4,:); ByFU(4,:); ByFU(4,:); ByFU(4,:)] - By;
     By(:,1) = ByFL(:,4);
     By(1,:) = ByFU(4,:);
     %By(:,4) = ByR(:,1);
     
     Bz = [BzFU(4,:); BzFU(4,:); BzFU(4,:); BzFU(4,:)];
     Bz(:,1) = BzFL(:,4);
     Bz(1,:) = BzFU(4,:);
     %Bz(:,4) = BzR(:,1);
     
     
     
     
     Bx = coonsPatch(Bx, 'normal');
%      By = coonsPatch(By, 'normal');
%      Bz = coonsPatch(Bz, 'normal');
     
    % Write matrices into file
    storeMatrices('betweenLightAndReinforce', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        car3();
        view([0 0]);
    end
end