function sideLight3(main)
    
    % Edge
    Bx = [1651.7,1690.6,1763.2,1819;
1651.7,1686.9,1764.7,1821.3;
1651.7,1683.7,1766.3,1823.7;
1651.7,1680.6,1767.9,1826;]

    
   
    % Edge
    By = [803,800.33,801,800;
792.67,789.76,795.42,795.67;
786.33,784.87,790.04,794.33;
780,780,787.67,794];
   
           
    % Edge
    Bz = [475,475,452.67,442;
450,448.75,440.46,429.67;
433,428.71,420.73,412.33;
420,420.67,401,399
];    

    % Write matrices into file
    storeMatrices('sideLight3', Bx, By, Bz);
     
    % This enables to run from this file
    if (nargin == 0)
        figure('units','normalized','outerposition',[0 0 1 1]);
        computeAllMetrices();
         view([0 0]);
%         view([0 0]);
    end

end