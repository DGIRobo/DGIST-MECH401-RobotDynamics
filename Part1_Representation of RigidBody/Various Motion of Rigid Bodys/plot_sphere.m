function plot_sphere(pos,opt)
% Plot 3d sphere with handler
persistent h
% Make enough handlers at the first
if isempty(h)
    for i = 1:10
        for j = 1:1000
            h{i,j}.first_flag = true;
        end
    end
end

% Parse arguments
fig_idx = getfield_safe(opt,'fig_idx',1,'plot_sphere');
subfig_idx = getfield_safe(opt,'subfig_idx',1,'plot_sphere');
r = getfield_safe(opt,'r',1,'plot_sphere');
face_color = getfield_safe(opt,'face_color','b','plot_sphere');
face_alpha = getfield_safe(opt,'face_alpha',0.3,'plot_sphere');
[x, y, z] = ellipsoid(pos(1), pos(2), pos(3), r, r, r, 15);
if h{fig_idx,subfig_idx}.first_flag || ...% first flag
        ~ishandle(h{fig_idx,subfig_idx}.fig)
    h{fig_idx,subfig_idx}.first_flag = false;
    h{fig_idx,subfig_idx}.fig = figure(fig_idx);
    h{fig_idx,subfig_idx}.surf = ...
        surf(x,y,z, 'EdgeColor','none','FaceColor',face_color,...
        'FaceAlpha',face_alpha);
else
    h{fig_idx,subfig_idx}.surf.XData = x;
    h{fig_idx,subfig_idx}.surf.YData = y;
    h{fig_idx,subfig_idx}.surf.ZData = z;
end