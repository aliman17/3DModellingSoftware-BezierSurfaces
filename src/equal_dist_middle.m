function Bx = equal_dist_middle(Bx, type, considerOldBx)
    % Input:    Compute Middle of the Bx based on margins. Middle of the Bx
    %           should be 0, otherwise that numbers will be added to the
    %           value computed in this algorithm
    %           Vertical means to compute middle columns, otherwise we take
    %           middle rows
                
    % Return:   Bx
    vertical = false;
    square = false;
    if type  % something that should be repaired
        vertical = true;
    elseif type == 'vertical'
        vertical = true;
    elseif type == 'horizontal'
        vertical = false
    elseif type == 'square'
        square = true;
    else
        vertical = false;
    end
    
    r_len = size(Bx, 2);
    c_len = size(Bx, 1);
    
    if vertical
        for i=1:c_len
            step = (Bx(i, r_len) - Bx(i, 1)) / (r_len - 1);
            for j=1:(r_len-2)
                if considerOldBx
                    Bx(i, j+1) = Bx(i, j+1) + Bx(i, 1) + j * step;  % Add the previous value too
                else
                    Bx(i, j+1) = Bx(i, 1) + j * step;
                end
            end
        end
    else
        for i=1:r_len
            step = (Bx(1, i) - Bx(c_len, i)) / (c_len - 1);
            for j=1:(c_len-2)
                if considerOldBx
                    Bx(j+1, i) = Bx(j+1, i) + Bx(1, i) - j * step;
                else
                    Bx(j+1, i) = Bx(1, i) - j * step;    
            end
        end
    end
end