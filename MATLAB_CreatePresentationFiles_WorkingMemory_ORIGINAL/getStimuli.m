function [alertArray, cuedFixationCrossArray, encodingArray, retrievalArray, changeArray, nonAlertedTargetsArrayCuedCond, nonAlertedTargetsArrayUncuedCond] = getStimuli(strExpDevice, iRun, stimulusSpecifications, iCond, ...
                                    nTrialsPerRun, dbPercChangeTrials, nNonAlertedTargets, dbPercNonAlertedTargets, nPositions, iWmLoad, bNoGaps)

	%%% Study: ATWM1
    
    % iCond: condition type (salient (1) or non-salient targets (2))

    % example: iCond = 1, nPositions = 6, wmLoad = 3, noGaps = 0
    % position                      1         2         3              4         5         6
    % alertArray{t}                 circle    blank     circle         blank     circle    blank
    % encodingArray{t}.stimuli{1}   180_red   135_red   135_red        180_red   180_red   90_red
    % encodingArray{t}.stimuli{2}   180_cyan  135_red   135_cyan       180_red   180_cyan  90_red
    % targetArray{t}                180_red   135_red   90_red_framed  180_red   180_red   90_red

    % generates flickering by alternating display of encodingArray{1} and encodingArray{2} (same bars, different color)

    if ~bNoGaps && (nPositions < 2*iWmLoad)
       disp('Error! Cannot ensure gaps, when nPositions < 2*iWmLoad'); 
    end

    % nNonAlertedTargets of nTrialsPerRun should ask for a target (framed bitmap) which was not alerted before
    vbNonAlertedTargetsCuedCond = getTrialsWithNonAlertedTargets(strExpDevice, nTrialsPerRun, nNonAlertedTargets, dbPercNonAlertedTargets);
    % use later, when shuffling the same trials for uncued condition
    nonAlertedTargetsArrayUncuedCond = getTrialsWithNonAlertedTargets(strExpDevice, nTrialsPerRun, nNonAlertedTargets, dbPercNonAlertedTargets);
    
    nonAlertedTargetsArrayCuedCond = vbNonAlertedTargetsCuedCond;
    
    vbTrialsWithAlertedTargets = find(vbNonAlertedTargetsCuedCond==false);
    vbTrialsWithNonAlertedTargets = find(vbNonAlertedTargetsCuedCond==true);

    nTrialsWithAlertedTargets = size(vbTrialsWithAlertedTargets,2);
    nTrialsWithNonAlertedTargets = size(vbTrialsWithNonAlertedTargets,2);
    
    vbChangeAlertedTarget = zeros(1,nTrialsWithAlertedTargets);    
    vbChangeNonAlertedTarget = zeros(1,nTrialsWithNonAlertedTargets); 
    
    if mod(iRun,2)==0 % compensate for rounding errors between runs
        nChangedTrialsWithAlertedTargets = floor(dbPercChangeTrials*nTrialsWithAlertedTargets);
        nChangedTrialsWithNonAlertedTargets = ceil(dbPercChangeTrials*nTrialsWithNonAlertedTargets);
    else
        nChangedTrialsWithAlertedTargets = ceil(dbPercChangeTrials*nTrialsWithAlertedTargets);
        nChangedTrialsWithNonAlertedTargets = floor(dbPercChangeTrials*nTrialsWithNonAlertedTargets);
    end
    
    vbChangeAlertedTarget = randsample(vbTrialsWithAlertedTargets, nChangedTrialsWithAlertedTargets);
    vbChangeNonAlertedTarget = randsample(vbTrialsWithNonAlertedTargets, nChangedTrialsWithNonAlertedTargets);

    % dbPercChangeTrials of each vbAlertedTargets and vbNonAlertedTargetsCuedCond has to be changed
    vbChangeTarget = zeros(1,nTrialsPerRun);
    vbChangeTarget(vbChangeAlertedTarget) = true;
    vbChangeTarget(vbChangeNonAlertedTarget) = true;
    changeArray = vbChangeTarget;
    
    for iTrial = 1:nTrialsPerRun

        if nPositions == 4
            alertArray{iTrial}.viPositionsInUse = getRandomPositions_4items(nPositions, bNoGaps);    
        else
            alertArray{iTrial}.viPositionsInUse = getRandomPositions(nPositions, iWmLoad, bNoGaps);    
        end
        viAlertedIndices = find(alertArray{iTrial}.viPositionsInUse==1);
        
        % overwrite alert array (alert all positions, but flicker only wmLoad positions (stored in viAlertedIndices)
        if  ~isempty(findstr(stimulusSpecifications.strCond,'NoBias'))            
            alertArray{iTrial}.viPositionsInUse = ones(1,nPositions); 
        end
        
        % EXP7: only white circles, but cueing fixation cross
        iPosFirstCue = 0;
        iPosSecondCue = 0;
        
        for iPos = 1:size(alertArray{iTrial}.viPositionsInUse,2)
            
            %alertArray{iTrial}.stimuli{iPos} = 'cueing_circle_w';
            alertArray{iTrial}.stimuli{iPos} = 'blank';
            
            if alertArray{iTrial}.viPositionsInUse(iPos) == 1 && iPosFirstCue == 0
                iPosFirstCue = iPos;
            end
            
            if alertArray{iTrial}.viPositionsInUse(iPos) == 1 && iPosFirstCue ~= 0
                iPosSecondCue = iPos;
            end
        end
        
        cuedFixationCrossArray{iTrial} = sprintf('%d_%d', iPosFirstCue, iPosSecondCue);
                
        [ encodingArray{iTrial}.stimuli retrievalArray{iTrial} ] = getBitmapConfiguration( nPositions, iCond, ...
                                                            viAlertedIndices, vbChangeTarget(iTrial), vbNonAlertedTargetsCuedCond(iTrial));
        
    end

end

function viInvAlertedIndices = invertAlertedIndices(viAlertedIndices, nNumPositions)

    viInvAlertedIndices = [1:nNumPositions];
    for iPos = nNumPositions:-1:1
       if ~isempty(find(viAlertedIndices == iPos))
           viInvAlertedIndices(iPos) = [];
       end
    end

end

function [ encodingArray, retrievalArray ] = getBitmapConfiguration(nPositions, iCond, viAlertedIndices, bIsChangedTarget, bFrameNonAlertedTarget )
   
    % select target bitmap (framed bitmap)
    if bFrameNonAlertedTarget
        % get all non alerted positions
        viInvAlertedIndices = invertAlertedIndices(viAlertedIndices, nPositions);
        % select one of these
        iTargetPosition = viInvAlertedIndices(randsample(1:size(viInvAlertedIndices,2),1));
    else
        % select on of the alerted positions
        iTargetPosition = viAlertedIndices(randsample(1:size(viAlertedIndices,2),1));
    end
    
    % get actual bar angles
    [ viBarAngles, iChangedTargetBarAngle ] = getRandomizedAngles(nPositions, iTargetPosition);
    
    % setup encoding bitmap names 
    encodingArray = {};
    for iPos = 1:nPositions
        encodingArray{1,iPos} = sprintf('gabor_%03d', viBarAngles(iPos));       
        % second row for flickering effect (alternate bitmaps)
        encodingArray{2,iPos} = sprintf('gabor_%03d_alt', viBarAngles(iPos));
    end
    
    % generate alternate bitmaps for flickering effect
    if iCond == 0 || iCond == 1
        % green flickering of alert/cue positions (salient targets)    
        % first, set all to red again
        temp = encodingArray(2,:);
        encodingArray(2,:) = encodingArray(1,:); 
        
        % then set alerted stimuli to cyan
        encodingArray(2,viAlertedIndices) = temp(viAlertedIndices);     
        % BP-suggestion
        %encodingArray(1,viAlertedIndices) = temp(viAlertedIndices);     
    end
    if iCond == 2
        % green flickering of non-alerted/cued positions (non-salient targets)
        % set alerted stimuli to red, all other stimuli remain cyan
        %temp = encodingArray(1,:);
        %encodingArray(1,:) = encodingArray(2,:); 
      
        encodingArray(2,viAlertedIndices) = encodingArray(1,viAlertedIndices);
        
        % then set alerted stimuli to cyan
        %encodingArray(2,viAlertedIndices) = temp(viAlertedIndices);     
        % BP-suggestion
        %encodingArray(1,viAlertedIndices) = temp(viAlertedIndices);           
    end
           
    % setup target bitmaps
    retrievalArray = encodingArray(1,:); % no need of flickering for target presentation

    if bIsChangedTarget
        retrievalArray{1,iTargetPosition} = sprintf('gabor_%03d', iChangedTargetBarAngle); 
    end
    
    strTemp = strcat(retrievalArray{1,iTargetPosition}, '_framed');
    retrievalArray{1,iTargetPosition} = strTemp;
    
    for iPos = 1:nPositions
        if iPos ~= iTargetPosition
            retrievalArray{1,iPos} = 'gabor_circ';
        end
    end
    
end


function vbNonAlertedTargetsCuedCond = getTrialsWithNonAlertedTargets(strExpDevice, nTrialsPerRun, nNonAlertedTargets, dbPercNonAlertedTargets)
    
    vbNonAlertedTargetsCuedCond = zeros(1,nTrialsPerRun);    
    
    % NAT = non alerted targets
    
    % the first n trials should be cued correctly! (so that the subject doesn't get confused)
    %numRandomizedTrials = nTrialsPerRun - 6;
    numRandomizedTrials = nTrialsPerRun - 3;
    
    % randomize windows of n trials seperately for more equal distributed NAT trials
    %nTrialsPerWindow = round(1/dbPercNonAlertedTargets);
    switch strExpDevice
        case 'MRI'
            nTrialsPerWindow = 4;
        case 'MEG'        
            nTrialsPerWindow = 5;
        case 'PSY';
            nTrialsPerWindow = 5;
    end        
    
    nNATTrialsPerWindow = ceil(nNonAlertedTargets / nTrialsPerRun * nTrialsPerWindow);
    strMessage = sprintf('trial number per window (%d trials) with non alerted targets = %d', nTrialsPerWindow, nNATTrialsPerWindow);
    disp(strMessage);
    
    numNAT = floor(numRandomizedTrials / nTrialsPerWindow);
    numRest = mod(numRandomizedTrials, nTrialsPerWindow);
    
    vbNonAlertedTargetsCuedCondTemp = [];
    
    for iWindow = 1:numNAT
         
        %vbNonAlertedTargetsCuedCondWindowTemp = zeros(1,nTrialsPerWindow);
        %vbNonAlertedTargetsCuedCondWindowTemp( randsample(nTrialsPerWindow, nNATTrialsPerWindow) ) = true;
        vbNonAlertedTargetsCuedCondWindowTemp = getNonAdjacentTargetTrials(nTrialsPerWindow, nNATTrialsPerWindow);
        
        % avoid subsequent catch trials
        if iWindow > 1
            if vbNonAlertedTargetsCuedCondTemp(end) == true && vbNonAlertedTargetsCuedCondWindowTemp(1) == true
               while 1
                   %vbNonAlertedTargetsCuedCondWindowTemp = zeros(1,nTrialsPerWindow);
                   %vbNonAlertedTargetsCuedCondWindowTemp( randsample(nTrialsPerWindow, nNATTrialsPerWindow) ) = true;  
                   vbNonAlertedTargetsCuedCondWindowTemp = getNonAdjacentTargetTrials(nTrialsPerWindow, nNATTrialsPerWindow);

                   if vbNonAlertedTargetsCuedCondWindowTemp(1) == false
                       break;
                   end
               end
            end
        end
        
        vbNonAlertedTargetsCuedCondTemp = [ vbNonAlertedTargetsCuedCondTemp vbNonAlertedTargetsCuedCondWindowTemp ];
    end
    
    if numRest > 0
        nRemainingNATTrials = nNonAlertedTargets - length(find(vbNonAlertedTargetsCuedCondTemp==1));
        
        vbNonAlertedTargetsCuedCondWindowTemp = getNonAdjacentTargetTrials(numRest, nNATTrialsPerWindow);
        
        % avoid subsequent catch trials
        if iWindow > 1
            if vbNonAlertedTargetsCuedCondTemp(end) == true && vbNonAlertedTargetsCuedCondWindowTemp(1) == true
                while 1  
                    vbNonAlertedTargetsCuedCondWindowTemp = getNonAdjacentTargetTrials(numRest, nNATTrialsPerWindow);

                    if vbNonAlertedTargetsCuedCondWindowTemp(1) == false
                       break;
                    end  
                end
            end
        end
        vbNonAlertedTargetsCuedCondTemp = [ vbNonAlertedTargetsCuedCondTemp vbNonAlertedTargetsCuedCondWindowTemp ];
    end
    
    %vbNonAlertedTargetsCuedCond = [0 0 0 vbNonAlertedTargetsCuedCondTemp 0 0 0];    
    vbNonAlertedTargetsCuedCond = [0 0 0 vbNonAlertedTargetsCuedCondTemp];    

end

function vbTemp = getNonAdjacentTargetTrials(nTrialsPerWindow, nNATTrialsPerWindow)

    while 1
        vbTemp = zeros(1,nTrialsPerWindow);
        vbTemp( randsample(nTrialsPerWindow, nNATTrialsPerWindow) ) = true;
        
        % test if two adjacent elements have the value 1
        vbTemp1 = [ vbTemp 0 ];
        vbTemp2 = [ 0 vbTemp ];
        vbTest = vbTemp1 + vbTemp2;
        if max(vbTest) < 2
            % if not, the max is 1 and we've found an array with non
            % adjacent targets
            break;
        end
    end
    
end
