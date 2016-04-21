function vbPositionsInUse = getRandomPositions(nPositions, iWmLoad, bNoGaps)
    
    %%% Study: ATWM1

    % randomly place iWmLoad balls on an lattice of nPositions
    % where a gap has to be placed between two positions
    % also, there cannot be balls on the first and last position simultaneously
    % (the lattice represents a loop; here: circle of potential stimuli positions)

    % e.g. regard a lattice with positions 1 2 3 4 5 6 7
    % implementation used here:
    % including a gap, balls can be placed on positions (1,2), (2,3), (3,4), (4,5), (5,6), (6,7), (7,1)
    % if a (ball,gap) pair is placed on (4,5), the pairs (3,4) and (5,6) are not allowed anymore 
    % and has to be removed from the "solution urn"
    
    % init empty vector of bools
    vbPositionsInUse = zeros(1,nPositions);

    % check if adjacent positions are allowed (bNoGaps = true)
    % or whether gap can be realized; otherwise drop the gap condition
    if nPositions < 2*iWmLoad || bNoGaps  
        vbPositionsInUse(randsample(nPositions, iWmLoad)) = 1;
        return;
    end
    
    %%% bNoGaps = false
    
    % special case, only one degree of freedom (randomize start position only)
    % note:
    % algorithm below would fail e.g. if nPositions=6, iWmLoad=3 and first two drawings
    % would be (3,4) and (6,1) -> removes (2,3), (4,5); (5,6), (1,2) -> no positions left
    % 1 2 3 4 5 6
    % 0 0 1 0 0 1
    if nPositions == 2*iWmLoad    
        iStartPos = randomTrueOrFalse() + 1;
        vbPositionsInUse(iStartPos:2:nPositions) = true;
        return;
    end
    
    % generate cell array with (ball,gap) pairs that represent possible solutions
    caSolutionPairs = {};
    for i=1:(nPositions-1)
        caSolutionPairs{i,1} = [ i (i+1) ];
    end
    caSolutionPairs{nPositions,1} = [ nPositions 1];
    
    % draw the balls
    for i=1:iWmLoad       
        iIndex = randsample(1:size(caSolutionPairs,1),1);
        iCuePosition = caSolutionPairs{iIndex}(1);    
        iGapPosition = caSolutionPairs{iIndex}(2); 
        vbPositionsInUse(iCuePosition) = true;
        
        % remove current (ball,gap) pair so that it cannot be drawn again
        caSolutionPairs(iIndex,:) = [];
        
        % remove neighbouring (ball,gap) pairs that are cannot used anymore because of gap condition
        for j=size(caSolutionPairs,1):-1:1
            if caSolutionPairs{j}(2) == iCuePosition || caSolutionPairs{j}(1) == iGapPosition
                caSolutionPairs(j,:) = [];
            end
        end
    end
end

