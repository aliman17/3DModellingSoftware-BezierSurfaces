function backUp1()
    x = 0
    % Edge
    Bx = [2655,2730.3,2961.7,3115;
        2655,2805.8,2955.4,3105;
        2655,2802.1,2948.5,3095;
        2665,2748.7,2941.7,3085];
      
    % Edge
    By = [929,950,982,989;
        900.67,925.17,938.42,950.67;
        872.33,886.08,899.21,912.33;
        844,851.67,864,874];
           
    Bz = [535,x,x,515;
        x,x,x,x;
        x,x,x,x;
        517,x,x,500];
    % Rectangle
    Bz = square(Bz);
    % Correct edge    
    Bz = Bz + [x,10,35,x; 
               7,12,36,x;
               3,22,36,x;
               x,20,35,x];
    

    % Write matrices into file
    storeMatrices('backUp1', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        axis([600 3000 0 2000 0 2000])
        car3();
         view([0 90]);
%         view([0 0]);
    end

end