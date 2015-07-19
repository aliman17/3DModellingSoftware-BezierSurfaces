function [Bx, By, Bz] = test()

    Bx = [3, 110, 250, 410; 
          3, 120, 260, 410;
          15, 150, 270, 417;
          85, 200, 300, 430];

    By = [375, 375, 375, 375;
          290, 300, 320, 340;
          150, 150, 155, 160;
          17, 40, 70, 93];
      
    By2 = 375 + (375 - By) 
      
    Bz = [0, 60, 140, 165;
          0, 60, 140, 165;
          0, 55, 135, 150;
          0, 50, 130, 140];
      
    axis equal;   %# Make the axes scales match
   
    xlabel('x');
    ylabel('y');
    zlabel('z');
    img = imread('./img/image.jpg'); %# Load a sample image
    xImage = [0 3263; 0 3263];   %# The x data for the image corners
    yImage = [1794 1794; 0 0];             %# The y data for the image corners
    zImage = [0 0; 0 0];   %# The z data for the image corners
    surf(xImage,yImage,zImage,...    %# Plot the surface
         'CData',img,...
         'FaceColor','texturemap');
     hold on;      %# Add to the plot 
    xImage = [0 3263; 0 3263];   %# The x data for the image corners
    yImage = [1794 1794; 1794 1794];             %# The y data for the image corners
    zImage = [1794 1794; 0 0];    %# The z data for the image corners
    surf(xImage,yImage,zImage,...    %# Plot the surface
         'CData',img,...
         'FaceColor','texturemap');
      
     Bx = Bx + 1590
     By = By + 850
     By2 = By2 + 850
     Bz = Bz + 480
     bezier_surface(Bx, By, Bz);
     bezier_surface(Bx, By2, Bz);
end