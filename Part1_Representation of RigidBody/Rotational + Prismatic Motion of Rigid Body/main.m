D2R = pi/180;
T_world = pr2t(cv([0, 0, 0]), rpy2r([0, 0, 0])); % world coordinate
max_tick = 1000;
p = eye(3,1000);
p_world = t2p(T_world);
p(1,1) = p_world(1);
p(1,2) = p_world(2);
p(1,3) = p_world(3);
axis equal; axis([-1.5,1.5,-1.5,1.5,-1.5,1.5]); grid on; view(82,16); rotate3d on;
xlabel('X','fontSize',20); ylabel('Y','fontSize',20); zlabel('Z','fontSize',20);
for tick = 1:max_tick % loop
    % Run
    T_rot = pr2t(cv(tick*0.001*[1, 1, 1]), rpy2r(tick*D2R*cv([0, 0, 1])));
    T_local = T_rot*T_world;
    % Animate
    if mod(tick, 5) == 0 % plot every 5 tick
        % Plot world coordinate
        plot_T(T_world,'');
        % Plot local coordinate
        plot_T(T_local,struct('subfig_idx',3,'len',0.2,'l',2,...
        'SHOW_TEXT',1,'text_str','{\Sigma}_W','text_fs',10));
        % Plot a line from world coordinate to local coordinate
        p_local = t2p(T_local);
        p(tick,1) = p_local(1);
        p(tick,2) = p_local(2);
        p(tick,3) = p_local(3);
        plot3([p(tick-4, 1), p(tick, 1)], [p(tick-4, 2), p(tick, 2)], [p(tick-4, 3), p(tick, 3)]);
        drawnow;
    end
end % for tick = 1:100 % loop