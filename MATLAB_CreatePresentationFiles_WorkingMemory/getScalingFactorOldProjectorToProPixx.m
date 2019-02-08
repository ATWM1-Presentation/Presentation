function [ dbFactor ] = getScalingFactorOldProjectorToProPixx(  )

    % get ration between new and old pixel / mm
    % width new projector (ProPixx): 1920 pixels - 422 mm
    % height old projector (Epson EB-5100): 768 pixels - 215 mm
    
    dbFactor = (1920/422) / (769/215);

end

