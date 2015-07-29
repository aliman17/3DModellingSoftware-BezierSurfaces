function out = continuous_side(matrixFrom, sideFrom, matrixTo, sideTo, alpha)
    % matrixFrom is a matrix from wich we will create things continuous. We
    % have 4 sides, so we determine which to take. Tha same but opposite
    % side is matrixTo. 
    % alpha = 1 we have C2 continue, otherwise C1. 
    basevector = [];
    if strcmp(sideFrom,'top')
        basevector = matrixFrom(1, :);
        direction = matrixFrom(1, :) - matrixFrom(2, :); % take top line and substract with lower one
    elseif strcmp(sideFrom, 'bottom')
        basevector = matrixFrom(4, :);
        direction = matrixFrom(4, :) - matrixFrom(3, :); % take bottom one and substract with upper one
    elseif strcmp(sideFrom, 'left')
        basevector = matrixFrom(:, 1);
        direction = matrixFrom(:, 1) - matrixFrom(:, 2); % left side
    elseif strcmp(sideFrom, 'right')
        basevector = matrixFrom(:, 4);
        direction = matrixFrom(:, 4) - matrixFrom(:, 3); % right one
    end
    
    continuous_vector = basevector + direction ;
    
    if strcmp(sideTo, 'top')
        matrixTo(1, :) = basevector;
        matrixTo(2, :) = alpha * continuous_vector;
    elseif strcmp(sideTo, 'bottom')
        matrixTo(4, :) = basevector;
        matrixTo(3, :) = alpha * continuous_vector;
    elseif strcmp(sideTo, 'left')
        matrixTo(:, 1) = basevector;
        matrixTo(:, 2) = alpha * continuous_vector;
    elseif strcmp(sideTo, 'right')
        matrixTo(:, 4) = basevector;
        matrixTo(:, 3) = alpha * continuous_vector;
    end
    out = matrixTo;
end