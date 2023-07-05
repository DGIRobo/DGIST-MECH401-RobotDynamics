function TransformationMatrix = DHParameter(a, alpha, d, theta)
xOffset = [a;0;0];
zOffset = [0;0;d];
TransformationMatrix = HomogeneousTransform(Rotx(alpha), xOffset, 1)*HomogeneousTransform(Rotz(theta), zOffset, 1);