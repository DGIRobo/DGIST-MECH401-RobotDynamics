function fig = set_fig_size(fig,fig_sz,varargin)
% Set figure size based on current screen size

% Parse options
p = inputParser;
addParameter(p,'monitor',1);
parse(p,varargin{:});
monitor = p.Results.monitor;

sz = get(0, 'ScreenSize'); 
mp = get(0, 'MonitorPositions');
if monitor == 2
    sz(3:4) = mp(2,3:4);
end

fig_pos = [fig_sz(1)*sz(3),fig_sz(2)*sz(4),fig_sz(3)*sz(3),fig_sz(4)*sz(4)];
set(fig,'Position',fig_pos); 

% Take care of stupid MATLAB modifications of toolbar..
addToolbarExplorationButtons(gcf);
ax = gca;
% ax.Toolbar.Visible = 'off'; % Turns off the axes toolbar
ax.Toolbar = []; % Removes axes toolbar data