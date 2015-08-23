function out = car3()
%     cd('D:\Git\CarModeling\src')
%     figure;
    %hold on;

    axis equal;   %# Make the axes scales match
    hold on; 
    
    

    % Set middle value
    [Bx, By, Bz] = readMetrices('frontWindow');
    middle_line_value = 1225
    
    % Compute all metrices (not needed if they are computed)
    %computeAllMetrices(true)
    
    % Plot pieces mirrored
%     colormap winter
    
    [s1, s2] = plotMirroredPiece('frontWindow', middle_line_value);
    set(s1, 'FaceColor',[0 0 0.5],'FaceAlpha',0.7);
    set(s2, 'FaceColor',[0 0 0.5],'FaceAlpha',0.7);
    
    [s1, s2] = plotMirroredPiece('roof', middle_line_value);
    [s1, s2] = plotMirroredPiece('frontReinforce', middle_line_value);
    [s1, s2] = plotMirroredPiece('upperReinforce', middle_line_value);
    [s1, s2] = plotMirroredPiece('bonnet', middle_line_value);
    [s1, s2] = plotMirroredPiece('bonnetGutter', middle_line_value);
    [s1, s2] = plotMirroredPiece('wiperPlace', middle_line_value);
    set(s1, 'FaceColor',[0 0 0.0],'FaceAlpha',1, 'EdgeColor','none');
    set(s2, 'FaceColor',[0 0 0.0],'FaceAlpha',1, 'EdgeColor','none');
    [s1, s2] = plotMirroredPiece('frontLight', middle_line_value);
    set(s1, 'FaceColor',[0 0 0.0],'FaceAlpha',0.7, 'EdgeColor','none');
    set(s2, 'FaceColor',[0 0 0.0],'FaceAlpha',0.7, 'EdgeColor','none');
    [s1, s2] = plotMirroredPiece('betweenLightAndReinforce', middle_line_value);

    [s1, s2] = plotMirroredPiece('sideLight', middle_line_value);
    [s1, s2] = plotMirroredPiece('sideLight2', middle_line_value);
    [s1, s2] = plotMirroredPiece('side1', middle_line_value);
    [s1, s2] = plotMirroredPiece('side2', middle_line_value);
    
    side = [1 0.5 0];
    thin = [0 1 0];
    
    [s1, s2] = plotMirroredPiece('side3', middle_line_value);
    [s1, s2] = plotMirroredPiece('side4', middle_line_value);
    [s1, s2] = plotMirroredPiece('side5', middle_line_value);
    [s1, s2] = plotMirroredPiece('side6', middle_line_value);
    [s1, s2] = plotMirroredPiece('side34', middle_line_value);
    [s1, s2] = plotMirroredPiece('side56', middle_line_value);

    [s1, s2] = plotMirroredPiece('side9', middle_line_value);
    [s1, s2] = plotMirroredPiece('sideBigBlackHole', middle_line_value);
    set(s1, 'FaceColor',[0 0 0],'FaceAlpha',0.7, 'EdgeColor','none');
    set(s2, 'FaceColor',[0 0 0],'FaceAlpha',0.7, 'EdgeColor','none');
    [s1, s2] = plotMirroredPiece('sideUpBottom', middle_line_value);
    [s1, s2] = plotMirroredPiece('sideBottom1', middle_line_value);
    [s1, s2] = plotMirroredPiece('sideBottom2', middle_line_value);
    [s1, s2] = plotMirroredPiece('sideUp1', middle_line_value);
    [s1, s2] = plotMirroredPiece('sideUp2', middle_line_value);
    [s1, s2] = plotMirroredPiece('sideUp3', middle_line_value);
    [s1, s2] = plotMirroredPiece('sideUp0', middle_line_value);
    [s1, s2] = plotMirroredPiece('sideWindow1', middle_line_value);
    set(s1, 'FaceColor',[0 0 0.5],'FaceAlpha',0.7, 'EdgeColor','none');
    set(s2, 'FaceColor',[0 0 0.5],'FaceAlpha',0.7, 'EdgeColor','none');

    [s1, s2] = plotMirroredPiece('thin5', middle_line_value);
    set(s1, 'FaceColor',thin,'FaceAlpha',1);
    set(s2, 'FaceColor',thin,'FaceAlpha',1);
    [s1, s2] = plotMirroredPiece('thin6', middle_line_value);
    set(s1, 'FaceColor',thin,'FaceAlpha',1);
    set(s2, 'FaceColor',thin,'FaceAlpha',1);
    [s1, s2] = plotMirroredPiece('sideUpBlackRight', middle_line_value);
    [s1, s2] = plotMirroredPiece('sideUpBlackLeft', middle_line_value);
    [s1, s2] = plotMirroredPiece('backUp1', middle_line_value);
    [s1, s2] = plotMirroredPiece('side10', middle_line_value);
    [s1, s2] = plotMirroredPiece('side11', middle_line_value);
    
    [s1, s2] = plotMirroredPiece('side12', middle_line_value);
    [s1, s2] = plotMirroredPiece('side13', middle_line_value);
    [s1, s2] = plotMirroredPiece('side14', middle_line_value);
    [s1, s2] = plotMirroredPiece('side15', middle_line_value);
    [s1, s2] = plotMirroredPiece('side16', middle_line_value);
    [s1, s2] = plotMirroredPiece('backReinforce', middle_line_value);
    [s1, s2] = plotMirroredPiece('backUp2', middle_line_value);
    set(s1, 'FaceColor',[0.05 0.05 0.05],'FaceAlpha',1);
    set(s2, 'FaceColor',[0.05 0.05 0.05],'FaceAlpha',1);
    [s1, s2] = plotMirroredPiece('backWindow', middle_line_value);
    set(s1, 'FaceColor',[0 0 0.5],'FaceAlpha',0.7);
    set(s2, 'FaceColor',[0 0 0.5],'FaceAlpha',0.7);
    [s1, s2] = plotMirroredPiece('sideWindow2', middle_line_value);
    set(s1, 'FaceColor',[0 0 0.5],'FaceAlpha',0.7);
    set(s2, 'FaceColor',[0 0 0.5],'FaceAlpha',0.7);
    [s1, s2] = plotMirroredPiece('sideWindow3', middle_line_value);
    set(s1, 'FaceColor',[0 0 0.5],'FaceAlpha',0.7);
    set(s2, 'FaceColor',[0 0 0.5],'FaceAlpha',0.7);
    [s1, s2] = plotMirroredPiece('backUp3', middle_line_value);
    set(s1, 'FaceColor',[1 0.5 0.0],'FaceAlpha',1);
    set(s2, 'FaceColor',[1 0.5 0.0],'FaceAlpha',1);    
    
    [s1, s2] = plotMirroredPiece('sideSmallBlackHole', middle_line_value);
    set(s1, 'FaceColor',[0 0 0],'FaceAlpha',0.7);
    set(s2, 'FaceColor',[0 0 0],'FaceAlpha',0.7);
    
    [s1, s2] = plotMirroredPiece('sideLight4', middle_line_value); 
    [s1, s2] = plotMirroredPiece('sideLight6', middle_line_value);    
    [s1, s2] = plotMirroredPiece('sideLight3', middle_line_value);    
    [s1, s2] = plotMirroredPiece('sideLight5', middle_line_value);
    [s1, s2] = plotMirroredPiece('sideUp_1', middle_line_value);

    [s1, s2] = plotMirroredPiece('thin2', middle_line_value);
    set(s1, 'FaceColor',thin,'FaceAlpha',1);
    set(s2, 'FaceColor',thin,'FaceAlpha',1);
    
    
    [s1, s2] = plotMirroredPiece('thin4', middle_line_value);
    set(s1, 'FaceColor',thin,'FaceAlpha',1);
    set(s2, 'FaceColor',thin,'FaceAlpha',1);
    [s1, s2] = plotMirroredPiece('thin3', middle_line_value);
    set(s1, 'FaceColor',thin,'FaceAlpha',1);
    set(s2, 'FaceColor',thin,'FaceAlpha',1);
    
    [s1, s2] = plotMirroredPiece('frontSide1', middle_line_value);
    [s1, s2] = plotMirroredPiece('frontSide2', middle_line_value);
    [s1, s2] = plotMirroredPiece('frontSide3', middle_line_value);
    
    % FRONT
    [s1, s2] = plotMirroredPiece('frontBonnet', middle_line_value);
    [s1, s2] = plotMirroredPiece('frontMask1', middle_line_value);
    [s1, s2] = plotMirroredPiece('frontMask2', middle_line_value);
    [s1, s2] = plotMirroredPiece('frontMask3', middle_line_value);
    [s1, s2] = plotMirroredPiece('frontMask4', middle_line_value);
    [s1, s2] = plotMirroredPiece('frontMask5', middle_line_value);
    
    black = [0 0 0]
    opacity = 0.9
    [s1, s2] = plotMirroredPiece('frontBlack1', middle_line_value);
    set(s1, 'FaceColor',black,'FaceAlpha',opacity);
    set(s2, 'FaceColor',black,'FaceAlpha',opacity);
    [s1, s2] = plotMirroredPiece('frontBlack2', middle_line_value);
    set(s1, 'FaceColor',black,'FaceAlpha',opacity);
    set(s2, 'FaceColor',black,'FaceAlpha',opacity);
    



    [s1, s2] = plotMirroredPiece('back0', middle_line_value);
    [s1, s2] = plotMirroredPiece('backLight', middle_line_value);
    set(s1, 'FaceColor',[1 0.0 0.0],'FaceAlpha',1);
    set(s2, 'FaceColor',[1 0.0 0.0],'FaceAlpha',1);

    [s1, s2] = plotMirroredPiece('backBlack', middle_line_value);
    set(s1, 'FaceColor',[0 0.0 0.0],'FaceAlpha',1);
    set(s2, 'FaceColor',[0 0.0 0.0],'FaceAlpha',1);
    
    [s1, s2] = plotMirroredPiece('back1', middle_line_value);
    [s1, s2] = plotMirroredPiece('back2', middle_line_value);
    [s1, s2] = plotMirroredPiece('back3', middle_line_value);
    [s1, s2] = plotMirroredPiece('back4', middle_line_value);
    [s1, s2] = plotMirroredPiece('back5', middle_line_value);
    [s1, s2] = plotMirroredPiece('back_1', middle_line_value);
    [s1, s2] = plotMirroredPiece('back6', middle_line_value);
    [s1, s2] = plotMirroredPiece('back7', middle_line_value);


    [s1, s2] = plotMirroredPiece('bonnetUnderGutter', middle_line_value);
    [s1, s2] = plotMirroredPiece('bonnetUnderGutter2', middle_line_value);
    
    
    [Bx, By, Bz] = readMetrices('road');
    s1 = bezier_surface(Bx, By, Bz);
    set(s1, 'FaceColor',[0.3 0.3 0.3],'FaceAlpha',1);
%     shading interp
    %hold off

    
%     % Coloring
%     % http://stackoverflow.com/questions/492232/how-do-i-set-a-surf-to-one-color-no-gradient-in-my-matlab-plot

    % Light
     axis vis3d
     h = camlight('right');
%      lighting phong
     camorbit(10,0)
%     for i = 1:20;
%        camorbit(10,0)
%        camlight(h,'left')
%        pause(.1)
%     end
end
