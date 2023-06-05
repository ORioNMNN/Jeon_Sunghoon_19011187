function az = azimuth(ENU)
    % ENU 위치에서 azimuth angle 계산
    n = size(ENU, 1);
    az = zeros(1, n);
    
    for i = 1:n
        E = ENU(i, 1);
        N = ENU(i, 2);
        U = ENU(i, 3);
        
        % 각 위성의 azimuth angle 계산
        if E == 0 && N == 0
            az(i) = 0; % ENU 위치가 원점일 경우 azimuth angle은 0
        else
            az(i) = atan2(E, N) * 180 / pi; % atan2 함수를 사용하여 azimuth angle 계산
        end
    end
end