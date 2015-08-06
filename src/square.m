function Bx = square(Bx)
    Bx(4, :) = equal_split(Bx(4,1), Bx(4,4), 4); %bottom
    Bx(:, 1) = equal_split(Bx(1,1), Bx(4,1), 4); %left 
    Bx(1, :) = equal_split(Bx(1,1), Bx(1,4), 4); %top
    Bx(:, 4) = equal_split(Bx(1,4), Bx(4,4), 4); %right
    Bx = coons(Bx, 'normal');
end
