function rangeInPQW = solveRangeInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly)
    
    r = semimajor_axis * (1 - eccentricity^2) / (1 + eccentricity * cos(true_anomaly));
    rangeInPQW = [r * cos(true_anomaly); r * sin(true_anomaly); 0];
end

