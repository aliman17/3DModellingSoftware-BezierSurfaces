function [C, D] = bezier_sub2(control_points, t)
    % Razbije krivuljo na polovici in naredi dve celici
    % ki dolocata nove kontrolne tocke
    
    sheme = decast(control_points, t);

    % pridobi c_i, torej zgornje
    C = [];
    size(sheme);
    for column=sheme
        C = [C; column{1}(1, :)];
    end
    
    % pridobi D_i, torej spodnje
    D = [];
    size(sheme);
    for column=sheme
        len = size(column{1});
        D = [D; column{1}(len(1), :)];
    end
    D = flipud(D);
end