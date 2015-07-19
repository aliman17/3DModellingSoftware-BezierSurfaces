function out = bezier_sub_range(control_points, k)
    % Iz 4 kontrolnih tock, razpolovimo krivuljo in 
    % naredimo nove 4 + 4 - 1 kontrolne tocke. Z uporabo
    % ranga dolocimo, koliko bomo razbijali. Vec kot bomo
    % bolje bomo aproksimirali
    
    n = size(control_points);
    n = n(1);
    
    cells = {control_points};
    for i=1:k
        % Start new level
        cellsCounter = 1;
        cellsNew = {};
        
        s = size(cells);
        s = s(2);
        for j=1:s
            % Get control points
            controls = cells{j};
            % Split control points
            cd = bezier_sub(controls);
            c = cd{1};
            d = cd{2};
            % Store
            cellsNew{cellsCounter} = c;
            cellsNew{cellsCounter + 1} = d;
            cellsCounter = cellsCounter + 2;
        end
        % Pepare for new round or returning
        cells = cellsNew;
    end
    out = cells
end