function HT = HomogeneousTransform(Rotmatrix, posmatrix, scale)
HT=[Rotmatrix(1,1) Rotmatrix(1,2) Rotmatrix(1,3) posmatrix(1,1)
    Rotmatrix(2,1) Rotmatrix(2,2) Rotmatrix(2,3) posmatrix(2,1)
    Rotmatrix(3,1) Rotmatrix(3,2) Rotmatrix(3,3) posmatrix(3,1)
    0 0 0 scale];
end