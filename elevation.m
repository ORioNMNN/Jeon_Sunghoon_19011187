function el = elevation(ENU, el_mask)

    n = size(ENU, 1);
    el = zeros(1, n);
    
    for i = 1:n
        E = ENU(i, 1);
        N = ENU(i, 2);
        U = ENU(i, 3);
        
        el(i) = atan2(U, sqrt(E^2 + N^2)) * 180 / pi;
        
        if el(i) < el_mask
            el(i) = NaN;
        end
    end
end