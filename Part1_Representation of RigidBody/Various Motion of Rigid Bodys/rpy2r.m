function R = rpy2r(rpy_deg)
% roll pitch yaw (degree) to rotation matrix
roll_deg = rpy_deg(1);
pitch_deg = rpy_deg(2);
yaw_deg = rpy_deg(3);

D2R = pi/180;

phi = roll_deg*D2R;
theta = pitch_deg*D2R;
psi = yaw_deg*D2R;

cPhi = cos(phi); sPhi = sin(phi);
cTheta = cos(theta); sTheta = sin(theta);
cPsi = cos(psi); sPsi = sin(psi);

R = [cPsi*cTheta, -sPsi*cPhi+cPsi*sTheta*sPhi, sPsi*sPhi+cPsi*sTheta*cPhi ; ...

    sPsi*cTheta, cPsi*cPhi+sPsi*sTheta*sPhi, -cPsi*sPhi+sPsi*sTheta*cPhi ; ...

    -sTheta, cTheta*sPhi, cTheta*cPhi];