function Bx = coons(Bx, type)
    
    m = size(Bx, 1);
    n = size(Bx, 2);

    if type == 'normal'
        for i = 2 : (m-1)  % Go by rows
            for j = 2 : (n-1)  % Go by columns
                Bx(i, j) = (1 - i/m) * Bx(1, j) + i/m * Bx(m, j) + (1 - j/n) * Bx(i, 1) + j/n * Bx(i, n) - [(1-i/m) i/m] * [Bx(1,1) Bx(1, n); Bx(m, 1) Bx(m, n)] * [(1-j/n) ; j/n] ;
            end
        end
    end
end