function out = chaikinov(control_points)
    % Vrne krivuljo (tocke) po chaikinovem algoritmu, torej Oi in Ri, 
    % ki naj bi bilo enako kot po chaikinovem2
    
    n = size(control_points);
    n = n(1);
    % Space to store rezult
    new_controls = [];

    for i=1:(n-1)
        % Get new points
        Qi = 3/4 * control_points(i, :) + 1/4 * control_points(i+1, :);
        Ri = 1/4 * control_points(i, :) + 3/4 * control_points(i+1, :);
        new_controls = [new_controls; Qi; Ri];
    end 
    out = new_controls;
end