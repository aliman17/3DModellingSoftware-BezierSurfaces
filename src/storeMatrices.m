function out = storeMatrices(name, Bx, By, Bz)
    dlmwrite(strjoin({'./matrices/', name, 'X.txt'}, ''), Bx);
    dlmwrite(strjoin({'./matrices/', name, 'Y.txt'}, ''), By);
    dlmwrite(strjoin({'./matrices/', name, 'Z.txt'}, ''), Bz);
end