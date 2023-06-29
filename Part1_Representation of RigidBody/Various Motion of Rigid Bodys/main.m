%% Linear Algebra things
% 1. Make T from three points 'ps2R'
% 2, Local transformation (translation + rotation): post-multiplication

%% 1. Make T from three points 'ps2R'
p1 = -1+2*rand(1,3);
p2 = -1+2*rand(1,3);
p3 = -1+2*rand(1,3);

% Get T from p1, p2, and p3
v1 = p2-p1; % v1
v2 = p3-p1; % v2
T = pr2t([0,0,0],ps2R(p1,p2,p3));

% plot two vectors and a T matrix
figure(1); hold on;
plot_T(T,'');
plot_sphere(v1,struct('subfig_idx',1,'r',0.1,'face_color','r'));
plot_sphere(v2,struct('subfig_idx',2,'r',0.1,'face_color','g'));
axis equal; rotate3d on; grid on;
xlabel('X','fontSize',20); ylabel('Y','fontSize',20); zlabel('Z','fontSize',20);
view(82,16);

%% 2, Local transformation (translation + rotation): post-multiplication
rng(0);

% Initial T
p_rand = -1+2*rand(1,3);
R_rand = rpy2r(360*rand(1,3));
T_init = pr2t(p_rand,R_rand);

% Do local transformation
for tick = 1:1000
    p_trsf_x = [tick*0.001,0,0]; rpy_trsf_x = [tick,0,0];
    T_trsf_x = T_init*pr2t(p_trsf_x,rpy2r(rpy_trsf_x));
    p_trsf_y = [0,tick*0.001,0]; rpy_trsf_y = [0,tick,0];
    T_trsf_y = T_init*pr2t(p_trsf_y,rpy2r(rpy_trsf_y));
    p_trsf_z = [0,0,tick*0.001]; rpy_trsf_z = [0,0,tick];
    T_trsf_z = T_init*pr2t(p_trsf_z,rpy2r(rpy_trsf_z));
    % plot
    plot_T(pr2t([0,0,0],eye(3,3)),struct('subfig_idx',1,'fig_size',[0.1,0.3,0.4,0.6],...
        'len',0.5,'lw',3,'SHOW_TEXT',0,'text_str','Global','text_fs',20));
    plot_T(T_init,struct('subfig_idx',2,'len',0.3,'lw',2,...
        'SHOW_TEXT',1,'text_str','T_{org}','text_fs',20));
    plot_T(T_trsf_x,struct('subfig_idx',3,'len',0.2,'lw',2,...
        'SHOW_TEXT',1,'text_str','T_{trsf x}','text_fs',10));
    plot_T(T_trsf_y,struct('subfig_idx',4,'len',0.2,'lw',2,...
        'SHOW_TEXT',1,'text_str','T_{trsf y}','text_fs',10));
    plot_T(T_trsf_z,struct('subfig_idx',5,'len',0.2,'lw',2,...
        'SHOW_TEXT',1,'text_str','T_{trsf z}','text_fs',10));
    title(sprintf('[%d] PRE-multiplications make LOCAL transforms.',tick),...
        'fontSize',30)
    if tick == 1
        axis equal; axis([-1.5,1.5,-1.5,1.5,-1.5,1.5]); grid on; view(82,16); rotate3d on;
        xlabel('X','fontSize',20); ylabel('Y','fontSize',20); zlabel('Z','fontSize',20);
    end
    drawnow;
end
fprintf(2,'Done.\n');

%% 2, Global transformation (translation + rotation): pre-multiplication
rng(0);

% Initial T
p_rand = -1+2*rand(1,3);
R_rand = rpy2r(360*rand(1,3));
T_init = pr2t(p_rand,R_rand);

% Do local transformation
for tick = 1:1000
    p_rot_x = [0,0,0]; rpy_rot_x = [2*tick,0,0];
    T_rot_x = pr2t(p_rot_x,rpy2r(rpy_rot_x))*T_init;
    p_trsl_y = [0,tick*0.001,0]; rpy_trsl_y = [0,0,0];
    T_trsl_y = pr2t(p_trsl_y,rpy2r(rpy_trsl_y))*T_init;
    p_trsl_z = [0,0,tick*0.001]; rpy_trsl_z = [0,0,0];
    T_trsl_z = pr2t(p_trsl_z,rpy2r(rpy_trsl_z))*T_init;
    % plot
    plot_T(pr2t([0,0,0],eye(3,3)),struct('subfig_idx',1,'fig_size',[0.1,0.3,0.4,0.6],...
        'len',0.5,'lw',3,'SHOW_TEXT',0,'text_str','Global','text_fs',20));
    plot_T(T_init,struct('subfig_idx',2,'len',0.3,'lw',2,...
        'SHOW_TEXT',1,'text_str','T_{org}','text_fs',20));
    plot_T(T_rot_x,struct('subfig_idx',3,'len',0.2,'lw',2,...
        'SHOW_TEXT',1,'text_str','T_{rot x}','text_fs',10));
    plot_T(T_trsl_y,struct('subfig_idx',4,'len',0.2,'lw',2,...
        'SHOW_TEXT',1,'text_str','T_{trsl y}','text_fs',10));
    plot_T(T_trsl_z,struct('subfig_idx',5,'len',0.2,'lw',2,...
        'SHOW_TEXT',1,'text_str','T_{trsl z}','text_fs',10));
    title(sprintf('[%d] POST-multiplications make GLOBAL transforms.',tick),...
        'fontSize',30)
    if tick == 1
        axis equal; axis([-1.5,1.5,-1.5,1.5,-1.5,1.5]); grid on; view(82,16); rotate3d on;
        xlabel('X','fontSize',20); ylabel('Y','fontSize',20); zlabel('Z','fontSize',20);
    end
    drawnow;
end
fprintf(2,'Done.\n');