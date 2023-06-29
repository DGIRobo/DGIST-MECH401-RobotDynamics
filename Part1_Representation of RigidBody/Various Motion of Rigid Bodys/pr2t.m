function T = pr2t(p,R)
% Get T from p and R
T = [R, reshape(p,[3,1]);0,0,0,1];