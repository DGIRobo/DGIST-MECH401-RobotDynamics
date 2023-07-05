function RotationMatrix = Rotx(omega)
RotationMatrix = [1  0   0
            0   cos(omega)  -sin(omega)
            0   sin(omega)  cos(omega)];