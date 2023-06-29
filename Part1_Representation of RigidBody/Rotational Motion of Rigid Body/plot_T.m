function fig = plot_T(T,opt)
% Plot a 4x4 transformation matrix
persistent h

% Make enough handlers at the first
if isempty(h), for i = 1:100, for j = 1:1000, h{i,j}.first_flag = true; end; end; end

% Parse input arguments
fig_idx = getfield_safe(opt,'fig_idx',1,'plot_T');
subfig_idx = getfield_safe(opt,'subfig_idx',1,'plot_T');
fig_size = getfield_safe(opt,'fig_size','','plot_T');
len = getfield_safe(opt,'len',1.0,'plot_T');
lw = getfield_safe(opt,'lw',2,'plot_T');
line_style = getfield_safe(opt,'line_style','-','plot_T');
PLOT_SPHERE = getfield_safe(opt,'PLOT_SPHERE',0,'plot_T');
if PLOT_SPHERE
    r = getfield_safe(opt,'r',0.2,'plot_T');
    face_color = getfield_safe(opt,'face_color','g','plot_T');
    face_alpha = getfield_safe(opt,'face_alpha',0.3,'plot_T');
end
PLOT_COORD = getfield_safe(opt,'PLOT_COORD',1,'plot_T');
SHOW_TEXT = getfield_safe(opt,'SHOW_TEXT',1,'plot_T');
if SHOW_TEXT
    text_str = getfield_safe(opt,'text_str','','plot_T');
    text_fs = getfield_safe(opt,'text_fs',15,'plot_T');
end

% Get p and R
p = T([1,2,3],4);
R = T([1,2,3],[1,2,3]);
ex = R(:,1); ey = R(:,2); ez = R(:,3);
if h{fig_idx,subfig_idx}.first_flag || ... % first flag
    ~ishandle(h{fig_idx,subfig_idx}.fig)    
    h{fig_idx,subfig_idx}.first_flag = false;
    % Initialize figure
    h{fig_idx,subfig_idx}.fig = figure(fig_idx); 
    if ~isempty(fig_size)
        set_fig_size(h{fig_idx,subfig_idx}.fig,fig_size);
    end
    hold on;
    % Plot coordinate
    if PLOT_COORD
        h{fig_idx,subfig_idx}.cx = plot3([p(1),p(1)+len*ex(1)],[p(2),p(2)+len*ex(2)],[p(3),p(3)+len*ex(3)],...
            'r','LineWidth',lw,'LineStyle',line_style);
        h{fig_idx,subfig_idx}.cy = plot3([p(1),p(1)+len*ey(1)],[p(2),p(2)+len*ey(2)],[p(3),p(3)+len*ey(3)],...
            'g','LineWidth',lw,'LineStyle',line_style);
        h{fig_idx,subfig_idx}.cz = plot3([p(1),p(1)+len*ez(1)],[p(2),p(2)+len*ez(2)],[p(3),p(3)+len*ez(3)],...
            'b','LineWidth',lw,'LineStyle',line_style);
    end
    % Plot sphere
    if PLOT_SPHERE
        [x,y,z] = ellipsoid(p(1),p(2),p(3), r, r, r, 15);
        h{fig_idx,subfig_idx}.surf = ...
            surf(x,y,z,...
            'EdgeColor','none','FaceColor',face_color,'FaceAlpha',face_alpha);
    end
    % Show text
    if SHOW_TEXT
        h{fig_idx,subfig_idx}.text = text(p(1),p(2),p(3),text_str,'fontsize',text_fs,...
            'VerticalAlignment','middle','HorizontalAlignment','center');
    end
else
    % Update coordinate
    if PLOT_COORD
        h{fig_idx,subfig_idx}.cx.XData = [p(1),p(1)+len*ex(1)];
        h{fig_idx,subfig_idx}.cx.YData = [p(2),p(2)+len*ex(2)];
        h{fig_idx,subfig_idx}.cx.ZData = [p(3),p(3)+len*ex(3)];
        h{fig_idx,subfig_idx}.cy.XData = [p(1),p(1)+len*ey(1)];
        h{fig_idx,subfig_idx}.cy.YData = [p(2),p(2)+len*ey(2)];
        h{fig_idx,subfig_idx}.cy.ZData = [p(3),p(3)+len*ey(3)];
        h{fig_idx,subfig_idx}.cz.XData = [p(1),p(1)+len*ez(1)];
        h{fig_idx,subfig_idx}.cz.YData = [p(2),p(2)+len*ez(2)];
        h{fig_idx,subfig_idx}.cz.ZData = [p(3),p(3)+len*ez(3)];
    end
    % Update sphere
    if PLOT_SPHERE
        [x,y,z] = ellipsoid(p(1),p(2),p(3), r, r, r, 15);
        h{fig_idx,subfig_idx}.surf.XData = x;
        h{fig_idx,subfig_idx}.surf.YData = y;
        h{fig_idx,subfig_idx}.surf.ZData = z;
    end
    % Update text
    if SHOW_TEXT
        h{fig_idx,subfig_idx}.text.Position = p;
        h{fig_idx,subfig_idx}.text.String = text_str;
    end
end
fig = h{fig_idx,subfig_idx}.fig;