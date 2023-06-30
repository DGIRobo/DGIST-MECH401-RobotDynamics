function RotationMatrix = Rotz(psi)
RotationMatrix = [cos(psi) -sin(psi)   0
            sin(psi)    cos(psi)    0
            0   0   1];