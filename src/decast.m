function out = decast(control_points, t)
    % Vrne de casteljau shemo

    whole_sheme = {control_points};
    position = 2;
    sub_control_points = control_points;
    while true
        % Get size and check if going out
        c_size = size(sub_control_points);
        if c_size(1) == 1
           out = whole_sheme;
           return
        end
        % Compute new column of de cast sheme
        new_sub_control_points = [];
        for i = 2 : (c_size(1)),
            p = (1-t) * sub_control_points(i-1,:) + t * sub_control_points(i,:);
            % Store new number
            new_sub_control_points = [new_sub_control_points ; p];
        end
        % Store column and go for the next round
        sub_control_points = new_sub_control_points;
        
        % Store for final output
        whole_sheme{position} = new_sub_control_points;
        position = position + 1;
    end
end