function vbPositionsInUse = getRandomPositions_4items(nPositions, bNoGaps)
    
    %%% Study: ATWM1

    % randomly place iWmLoad balls on an lattice of nPositions
    % where a gap has to be placed between two positions
    % also, there cannot be balls on the first and last position simultaneously
    % (the lattice represents a loop; here: circle of potential stimuli positions)

    % e.g. regard a lattice with positions 1 2 3 4
    % if bNoGaps == true
    %     allow items placed on (1,2); (1,3); (1,4); (2,3); (2,4); (3,4)
    % if bNoGaps == flase
    %     allow items placed on (1,3); (2,4)
    
    if bNoGaps
        viStateSpace = [
            1,2; 
            1,3; 
            1,4; 
            2,3; 
            2,4; 
            3,4;
        ];
    else
        viStateSpace = [
            1,3;
            2,4;
        ];
    end
        
    % init empty vector of bools
    vbPositionsInUse = zeros(1,nPositions);
    
    iIndex = randsample(length(viStateSpace), 1);
    
    vbPositionsInUse(viStateSpace(iIndex,:)) = 1;

end

