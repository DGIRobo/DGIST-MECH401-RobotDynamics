function trajectorypoints = cubicPolynomial(viapoints, resolution)
[numDatas, numPoints] = size(viapoints);
trajectorypoints = zeros(numDatas, viapoints(1, numPoints)*(1/resolution));
for i = 1:(numPoints-1)
    startTime = viapoints(1, i);
    startPosition = viapoints(2, i);
    startVelocity = viapoints(3, i);
    finalTime = viapoints(1, i+1);
    finalPosition = viapoints(2, i+1);
    finalVelocity = viapoints(3, i+1);
    dPosition = finalPosition - startPosition;
    dVelocity = finalVelocity - startVelocity;
    dTime = finalTime - startTime;
    a3 = (2*dVelocity)/(dTime)^2 - (2*dPosition)/(dTime)^3 - (dVelocity)/(dTime)^2;
    a2 = (dVelocity)/(2*dTime) - 3*(startTime + finalTime)*a3/2;
    a1 = startVelocity - 3*a3*startTime^2 - 2*a2*startTime;
    a0 = startPosition - a3*startTime^3 - a2*startTime^2 -a1*startTime;
    for t = startTime*(1/resolution):finalTime*(1/resolution)
        trajectorypoints(1, t+1) = t*resolution;
        trajectorypoints(2, t+1) = a0 + a1*(t*resolution) + a2*(t*resolution)^2 + a3*(t*resolution)^3;
        trajectorypoints(3, t+1) = a1 + 2*a2*(t*resolution) + 3*a3*(t*resolution)^2;
    end
end