function R = PQW2ECI(arg_prg, inc_angle, RAAN)
    % 변환 각도 계산
    arg_prg = deg2rad(arg_prg);
    inc_angle = deg2rad(inc_angle);
    RAAN = deg2rad(RAAN);
    
    % 회전 행렬 계산
    R1 = [cos(RAAN), sin(RAAN), 0;
          -sin(RAAN), cos(RAAN), 0;
          0, 0, 1];
    R2 = [1, 0, 0;
          0, cos(inc_angle), sin(inc_angle);
          0, -sin(inc_angle), cos(inc_angle)];
    R3 = [cos(arg_prg), sin(arg_prg), 0;
          -sin(arg_prg), cos(arg_prg), 0;
          0, 0, 1];
      
    % 전체 회전 행렬 계산
    R = R3 * R2 * R1;
end