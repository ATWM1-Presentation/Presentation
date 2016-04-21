function [ viBarAngles, iTargetBarAngle ] = getRandomizedAngles(iNumPositions, iTargetPos)

    viBarAnglesHist = [];

    global m_dbMinAngleDifference;
    m_dbMinAngleDifference = 15;
    
    %for i = 1:500

        bFound = false;
        while ~bFound        
            viBarAngles = getEncodingBars(iNumPositions);            
            [ iTargetBarAngle, bFound, strResult ] = getChangedTargetBar(viBarAngles, iTargetPos);               
        end

        %disp(strResult);
    %    viBarAnglesHist = [ viBarAnglesHist viBarAngles iTargetBarAngle ];        
    %end
    
    %hist(viBarAnglesHist);
end

function [ viBarAngles ] = getEncodingBars(iNumPositions)

    % bars from 1...180? are provided
    % select 'iNumPositions' bars, where each bar has to differ at least 10? from the others
    global m_dbMinAngleDifference;
    
    dbMinDistance = 0;    
    
    while dbMinDistance < m_dbMinAngleDifference
        
        viBarAngles = [];
        for iPos=1:iNumPositions
           viBarAngles = [ viBarAngles randsample(180,1) ];
        end

        dbMinDistance = getMinDistanceBetweenAllBars(viBarAngles);
    end

	%strResult = sprintf('Angles: %d, %d, %d, %d, %d; min dist.=%d', viBarAngles(1), viBarAngles(2), viBarAngles(3), viBarAngles(4), viBarAngles(5), dbMinDistance );
    %disp(strResult);
end


function [ dbMinDistance ] = getMinDistanceBetweenAllBars( viBarAngles )

    dbMinDistance = Inf;

    for i = 1:(length(viBarAngles)-1)
        for j = (i+1):length(viBarAngles)
            
           dbDistanceTemp = abs( viBarAngles(i)-viBarAngles(j) ); 
           if dbDistanceTemp > 90
               dbDistanceTemp = dbDistanceTemp - 90;
           end
            
           dbMinDistance = min(dbMinDistance, dbDistanceTemp); 
        end
    end

end

function [ iTargetBarAngle, bFound, strResult ] = getChangedTargetBar(viBarAngles, iTargetPos)

    global m_dbMinAngleDifference;

    iTargetBarAngle = -1;
    iIteration = 0;
    
    bFound = false;
    while ~bFound && iIteration < 10000
        
        iIteration = iIteration+1;
        iTargetBarAngleTemp = randsample(180,1);
        dbMinDistanceToAllBars = getMinDistanceBetweenTargetAndBars(viBarAngles, iTargetBarAngleTemp);
        
        dbDiffTargetAngle = abs( viBarAngles(iTargetPos)-iTargetBarAngleTemp ); 
        if dbDiffTargetAngle > 90
            dbDiffTargetAngle = dbDiffTargetAngle - 90;
        end
        
        if dbMinDistanceToAllBars > m_dbMinAngleDifference && dbDiffTargetAngle >= 45 && dbDiffTargetAngle <= 50
            bFound = true;
            iTargetBarAngle = iTargetBarAngleTemp;
        end
        
    end

    if bFound        
       strResult = sprintf('Target bar angle = %d; min dist. to other bars=%d, diff. before/after change=%d', iTargetBarAngle, dbMinDistanceToAllBars, dbDiffTargetAngle );
    else
       strResult = 'No bar angle found';
    end
    %disp(strResult);
 
end

function [ dbMinDistance ] = getMinDistanceBetweenTargetAndBars( viBarAngles, iTargetBarAngle )

    dbMinDistance = Inf;

    for i = 1:length(viBarAngles)
        
        dbDistanceTemp = abs(viBarAngles(i)-iTargetBarAngle);
        if dbDistanceTemp > 90
            dbDistanceTemp = dbDistanceTemp - 90;
        end

        dbMinDistance = min(dbMinDistance, dbDistanceTemp); 
    end

end



function [ iFound, jFound, bFound, strMessage ] = getChangedTargetBarIndices_obsolete(viBarAngles)

    % different approach:
    % get change pair out of 'iNumPositions + 1' bar angles
    % and get indices of this change pair (encode with iNumPositions, the extra bar represents the changed target bar)

    viPotentialTargets_i = [];
    viPotentialTargets_j = [];
    viDistances = [];
    bFound = false;
    
    for i = 1:(length(viBarAngles)-1)
        for j = (i+1):length(viBarAngles)
            
           dbDistanceTemp = abs( viBarAngles(i)-viBarAngles(j) ); 
           if dbDistanceTemp > 90
               dbDistanceTemp = dbDistanceTemp - 90;
           end
           
           if dbDistanceTemp > 45 && dbDistanceTemp < 55
               viPotentialTargets_i = [ viPotentialTargets_i i ];
               viPotentialTargets_j = [ viPotentialTargets_j j ];
               viDistances = [ viDistances dbDistanceTemp ];
           end
        end
    end
    
    % select one of the pairs found
    if length(viPotentialTargets_i) > 0
        
        %iIndex = randsample(length(viPotentialTargets_i), 1);
        % do not select randomly, but use minimum (near 45?), makes it even more difficult
        iIndex = find(viDistances == min(viDistances));
        iFound = viPotentialTargets_i(iIndex(1));
        jFound = viPotentialTargets_j(iIndex(1));
        dbDistanceTemp = viDistances(iIndex(1));
        bFound = true;
        strMessage = sprintf('      Change pair: i=%d, j=%d; %d / %d; distance = %d', iFound, jFound, viBarAngles(iFound), viBarAngles(jFound), dbDistanceTemp );
    else
        iFound = -1;
        jFound = -1;
        strMessage = sprintf('No valid change pair found!');
    end
    %disp(strMessage);
end


