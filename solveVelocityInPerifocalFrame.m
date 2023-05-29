function velocityInPQW = solveVelocityInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly)
    
    mu = 3.986004418e14; % [m^3 s^−2]

    v = sqrt(mu / semimajor_axis) * eccentricity * sin(true_anomaly) / sqrt(1 - eccentricity^2);

    velocityInPQW = [-v * sin(true_anomaly); v * (eccentricity + cos(true_anomaly)); 0];
end
