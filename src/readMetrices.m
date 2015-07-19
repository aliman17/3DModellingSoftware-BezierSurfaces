function [Bx, By, Bz] = readMetrices(name)
    Bx = dlmread(strjoin({'./matrices/', name, 'X.txt'}, ''));
    By = dlmread(strjoin({'./matrices/', name, 'Y.txt'}, ''));
    Bz = dlmread(strjoin({'./matrices/', name, 'Z.txt'}, ''));
end