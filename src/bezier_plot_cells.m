function bezier_plot_cells(cells)
    % Izrise subdivision krivulje. Vsi poddelcki so 
    % podavi v cells. Vsaka cell ima kontrolne tocke za
    % svoj del krivulje
    
    n = size(cells);
    n = n(2);
    for i=1:n
        % Plot one cell
        points = cells{i};
        bezier_plot(points);
    end
    
end