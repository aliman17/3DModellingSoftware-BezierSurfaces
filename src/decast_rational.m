function out = decast_rational(control_points, weights, t)
    % Vrne de casteljau shemo
    % weights vector of weights

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
        new_weights = (1 - t) * weights( 1:(length(weights)-1 )) + t * weights( 2 : length(weights) );
        % Compute new column of de cast sheme
        new_sub_control_points = [];
        for i = 1 : (c_size(1)-1)
            p = (1-t) * weights(i)/new_weights(i) * sub_control_points(i,:) + t * weights(i+1)/new_weights(i) * sub_control_points(i+1,:);
            % Store new number
            new_sub_control_points = [new_sub_control_points ; p];
        end
        % Store column and go for the next round
        sub_control_points = new_sub_control_points;
        weights = new_weights;
        
        % Store for final output
        whole_sheme{position} = new_sub_control_points;
        position = position + 1;
    end
end