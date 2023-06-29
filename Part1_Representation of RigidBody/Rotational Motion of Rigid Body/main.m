D2R = pi/180;
randompos = 0.2*randn(3,1);
randomangle = rpy2r(360*D2R*rand(3,1));
T_init = pr2t(randompos, randomangle);
T_cube = T_init;
axis equal; axis([-1,1,-1,1,-1,1]); grid on; view(82,16); rotate3d on;
xlabel('X','fontSize',20); ylabel('Y','fontSize',20); zlabel('Z','fontSize',20);
for tick = 1:1000
    T_rot = pr2t('', rpy2r(tick*D2R*[0,0,1])); % z-axis rotate
    T_cube = T_rot * T_init;
    if mod(tick, 10) == 0
        % Plot world coordinate
        plot_T(pr2t([0,0,0],eye(3,3)),'');
        % Plot cube coordinate
        plot_T(T_cube,struct('subfig_idx',3,'len',0.2,'l',2,...
        'SHOW_TEXT',1,'text_str','T cube','text_fs',10));
        % Plot cube
        xyz_min = cv([0, 0, 0]);
        xyz_len = cv([0.5, 0.5, 0.5]);
        % plot_cube(T_cube, xyz_min, xyz_len, 'fig_idx', 1, 'subfig_idx', 1, 'bfc', 'b', 'bfa', 0.3, 'bec', 'k');
        drawnow;
    end
end
