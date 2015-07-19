function bezier_plot(points)
    % Izrise krivuljo na podlagi podanih kontrolnih tock
    
    curve = bezier(points);
    dim = size(points);
    hold on
    axis equal
    % Plot 2D
    if dim(2) == 2
        plot(points(:,1),points(:,2), 'r');
        plot(curve(:,1),curve(:,2), 'b');
    % Plot 3D
    else if dim(2) == 3
        plot3(points(:,1),points(:,2), points(:,3), 'r');
        plot3(curve(:,1),curve(:,2), curve(:,3), 'b');
        end
    hold off
end