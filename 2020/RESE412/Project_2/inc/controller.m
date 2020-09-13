function D = fcn(T_HIGH, HW_W, T, solar, temp)
    persistent heating_failed
    persistent reached_high
        
    duty_cycle = 0.0;
    
    if isempty(heating_failed)
        heating_failed = false;
    end
    if isempty(reached_high)
        reached_high = false;
    end
    
    if (mod(T, 1440)==0)
        reached_high = false;
        heating_failed = false;
    end
    
    if (temp >= T_HIGH)
        reached_high = true;
    end
    
    %Remove NaN from calc
    unused_solar = solar;
    if isnan(unused_solar)
        unused_solar = 0;
    end
    
    % Power determination
    if (unused_solar >= HW_W)
        duty_cycle = 1.0;
    else 
        duty_cycle = unused_solar / HW_W;
    end
    
    if (mod(T-1020, 1440)==0 && ~reached_high)
        heating_failed = true;
    end
    
    if heating_failed && ~reached_high
        duty_cycle = 1.0;
    end
D = duty_cycle;
