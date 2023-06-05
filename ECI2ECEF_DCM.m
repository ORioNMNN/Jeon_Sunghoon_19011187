function DCM = ECI2ECEF_DCM(time)
    
    JD = juliandate(datetime(time));
    
    T_UT1 = (JD - 2451545.0) / 36525;
    
    theta_GMST = 280.46061837 + 360.98564736629 * (JD - 2451545.0) + 0.000387933 * T_UT1^2 - T_UT1^3/38710000; 
    theta_GMST = mod(theta_GMST, 360); 
    theta_GMST = deg2rad(theta_GMST); 
    
    DCM = [cos(theta_GMST) sin(theta_GMST) 0;
           -sin(theta_GMST) cos(theta_GMST) 0;
           0 0 1];
end
