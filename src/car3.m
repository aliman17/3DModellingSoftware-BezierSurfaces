function out = car3()
    cd('D:\Git\CarModeling\src')
%     figure;
    %hold on;

    axis equal;   %# Make the axes scales match
    hold on; 
    
    backgroundPlan();

    % Set middle value
    [Bx, By, Bz] = readMetrices('frontWindow');
    middle_line_value = By(1, 1);
    
    % Compute all metrices (not needed if they are computed)
    % computeAllMetrices()
    
    % Plot pieces mirrored
    %colormap winter
    [s1, s2] = plotMirroredPiece('frontWindow', middle_line_value);
    set(s1, 'FaceColor',[0 0 0.5],'FaceAlpha',0.7);
    set(s2, 'FaceColor',[0 0 0.5],'FaceAlpha',0.7);
    
    [s1, s2] = plotMirroredPiece('roof', middle_line_value);
    set(s1, 'FaceColor',[1 0.5 0.0],'FaceAlpha',1);
    set(s2, 'FaceColor',[1 0.5 0.0],'FaceAlpha',1);
    [s1, s2] = plotMirroredPiece('frontReinforce', middle_line_value);
    set(s1, 'FaceColor',[1 0.5 0.0],'FaceAlpha',1);
    set(s2, 'FaceColor',[1 0.5 0.0],'FaceAlpha',1);
    [s1, s2] = plotMirroredPiece('upperReinforce', middle_line_value);
    set(s1, 'FaceColor',[1 0.5 0.0],'FaceAlpha',1);
    set(s2, 'FaceColor',[1 0.5 0.0],'FaceAlpha',1);
    [s1, s2] = plotMirroredPiece('bonnet', middle_line_value);
    set(s1, 'FaceColor',[1 0.5 0.0],'FaceAlpha',1);
    set(s2, 'FaceColor',[1 0.5 0.0],'FaceAlpha',1);
    [s1, s2] = plotMirroredPiece('bonnetGutter', middle_line_value);
    set(s1, 'FaceColor',[1 0.5 0.0],'FaceAlpha',1);
    set(s2, 'FaceColor',[1 0.5 0.0],'FaceAlpha',1);
    [s1, s2] = plotMirroredPiece('wiperPlace', middle_line_value);
    set(s1, 'FaceColor',[0 0 0.0],'FaceAlpha',1);
    set(s2, 'FaceColor',[0 0 0.0],'FaceAlpha',1);
    [s1, s2] = plotMirroredPiece('bonnetUnderGutter', middle_line_value);
    set(s1, 'FaceColor',[1 0.5 0.0],'FaceAlpha',1);
    set(s2, 'FaceColor',[1 0.5 0.0],'FaceAlpha',1);
    [s1, s2] = plotMirroredPiece('frontLight', middle_line_value);
    set(s1, 'FaceColor',[0 0 0.6],'FaceAlpha',0.8);
    set(s2, 'FaceColor',[0 0 0.6],'FaceAlpha',0.8);
    [s1, s2] = plotMirroredPiece('betweenLightAndReinforce', middle_line_value);
    set(s1, 'FaceColor',[1 0.5 0.0],'FaceAlpha',1);
    set(s2, 'FaceColor',[1 0.5 0.0],'FaceAlpha',1);

    %shading interp
    %hold off
    
    
    % Coloring
    % http://stackoverflow.com/questions/492232/how-do-i-set-a-surf-to-one-color-no-gradient-in-my-matlab-plot
end
