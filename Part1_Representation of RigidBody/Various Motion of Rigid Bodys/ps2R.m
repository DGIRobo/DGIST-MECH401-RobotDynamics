function R = ps2R(p1,p2,p3)
% Three positions to R 
v1 = p2-p1; % v1
v2 = p3-p1; % v2

u1 = v1 / norm(v1);
u2 = v2 - proj_vec(u1,v2);
u3 = cross(u1,u2);

e1 = u1 / norm(u1);
e2 = u2 / norm(u2);
e3 = u3 / norm(u3);

R = [e1',e2',e3'];