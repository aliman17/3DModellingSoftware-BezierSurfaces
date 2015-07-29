function backgroundPlan()

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
 
    xImage = [3263 3263; 3263 3263];   %# The x data for the image corners
    yImage = [1794 (1794-3263); 1794 (1794-3263)];             %# The y data for the image corners
    zImage = [1794 1794; 0 0];    %# The z data for the image corners
    surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 
end