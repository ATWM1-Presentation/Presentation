function [ viTargetTrialsAllRuns ] = GetTargetTrials(iTrialNumPerRun, iNumRuns, dbProb, iWindowSize)
    
    viTargetTrialsAllRuns = [];    
    
    for iRun = 1:iNumRuns
        [ viTargetTrials ] = GetTargetsForOneRun(iTrialNumPerRun, dbProb, iWindowSize);    
        viTargetTrialsAllRuns = [ viTargetTrialsAllRuns; viTargetTrials ];
    end
    
end

function [ viTargetTrials ] = GetTargetsForOneRun(iTrialNum, dbProb, iWindowSize)


    while 1

        viTargetTrials = [];

        for iWindow = 1:iWindowSize:(iTrialNum-iWindowSize+1)
         
            viTargetsPerWindow = [];
 
            while 1 % fulfill sliding window condition
            
                 viTargetsPerWindow = GetNextWindow(iWindowSize, dbProb);
                 viTargetTrialsTemp = [ viTargetTrials viTargetsPerWindow ];

                 if iWindow == 1
                    break;
                 else                     
                    viSlidingWindow = viTargetTrialsTemp( (end-round(3*iWindowSize/2)+1):(end-round(iWindowSize/2)) );
                     
                    if length( find(viSlidingWindow==1) ) == iWindowSize*dbProb 
                         break;
                    end
                 end
            end
            
            viTargetTrials = [ viTargetTrials viTargetsPerWindow ];
             
        end

        % first trial should be no target!
        if viTargetTrials(1) == 0  
            break;
        end

    end

    viTargetTrials = viTargetTrials';

end

function viTargetsPerWindow = GetNextWindow(iWindowSize, dbProb)

    viNewTargets = [];
    
    while 1 % prevent non-adjacent targets
        
        viNewTargets = sort(randperm(iWindowSize,iWindowSize*dbProb));
        bNoAdjacentTargets = true;

        for iTrial = 2:length(viNewTargets)
            if (viNewTargets(iTrial)-viNewTargets(iTrial-1)) < 2
                bNoAdjacentTargets = false;
            end
        end
        if bNoAdjacentTargets
            break;
        end        
    end
    
    viTemp = zeros(1,iWindowSize);
    viTemp(viNewTargets) = 1;
    viTargetsPerWindow = viTemp;

end
