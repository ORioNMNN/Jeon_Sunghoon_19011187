function DCM = ECI2ECEF_DCM(time)
    % 입력된 시간 정보를 이용하여 ECI to ECEF DCM을 계산하는 함수
    
    % Julian Date 계산
    JD = juliandate(datetime(time));
    
    % 율리우스 세기 계산
    T_UT1 = (JD - 2451545.0) / 36525;
    
    % ECI to ECEF DCM 계산
    
    theta_GMST = 280.46061837 + 360.98564736629 * (JD - 2451545.0) + 0.000387933 * T_UT1^2 - T_UT1^3/38710000; % 그리니치 평균별자리시각 (GMST) (deg)
    theta_GMST = mod(theta_GMST, 360); % 0-360 범위로 제한
    theta_GMST = deg2rad(theta_GMST); % radian으로 변환
    
    DCM = [cos(theta_GMST) sin(theta_GMST) 0;
           -sin(theta_GMST) cos(theta_GMST) 0;
           0 0 1];
end
