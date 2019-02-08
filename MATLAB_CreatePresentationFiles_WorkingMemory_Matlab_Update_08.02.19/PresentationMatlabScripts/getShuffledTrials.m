function [ alertArrNew, cuedFixationCrossArrNew, encodingArrNew, retrievalArrNew, changeArrNew, nonAlertedTargetsArrCuedCondNew ] = ...
                getShuffledTrials(alertArr, cuedFixationCrossArr, encodingArr, retrievalArr, changeArr, nonAlertedTargetsArrCuedCond, nonAlertedTargetsArrUncuedCond )
        
    % use nonAlertedTargetsArrUncuedCond as placeholder for alternative order of alerted and non-alerted target
    % resort trial configs of cued condition using the order from nonAlertedTargetsArrUncuedCond
    % in order to get trial configs of uncued condition
            
	for iRun = 1:size(alertArr,2)  
        
        viAlertedCued = find(nonAlertedTargetsArrCuedCond{iRun} == 0);
        viAlertedCued = viAlertedCued(randperm(length(viAlertedCued)));
        % permute for better mixing
        viNonAlertedCued = find(nonAlertedTargetsArrCuedCond{iRun} == 1);
        viNonAlertedCued = viNonAlertedCued(randperm(length(viNonAlertedCued)));
        
        viAlertedUncued = find(nonAlertedTargetsArrUncuedCond{iRun} == 0);
        viNonAlertedUncued = find(nonAlertedTargetsArrUncuedCond{iRun} == 1);
        
        alertArrNew{iRun}(viAlertedUncued)             = alertArr{iRun}(viAlertedCued);
        cuedFixationCrossArrNew{iRun}(viAlertedUncued) = cuedFixationCrossArr{iRun}(viAlertedCued);
        encodingArrNew{iRun}(viAlertedUncued)          = encodingArr{iRun}(viAlertedCued);
        retrievalArrNew{iRun}(viAlertedUncued)         = retrievalArr{iRun}(viAlertedCued);
        changeArrNew{iRun}(viAlertedUncued)            = changeArr{iRun}(viAlertedCued);
        nonAlertedTargetsArrCuedCondNew{iRun}(viAlertedUncued) = nonAlertedTargetsArrCuedCond{iRun}(viAlertedCued);        
 
        alertArrNew{iRun}(viNonAlertedUncued)             = alertArr{iRun}(viNonAlertedCued);
        cuedFixationCrossArrNew{iRun}(viNonAlertedUncued) = cuedFixationCrossArr{iRun}(viNonAlertedCued);
        encodingArrNew{iRun}(viNonAlertedUncued)          = encodingArr{iRun}(viNonAlertedCued);
        retrievalArrNew{iRun}(viNonAlertedUncued)         = retrievalArr{iRun}(viNonAlertedCued);
        changeArrNew{iRun}(viNonAlertedUncued)            = changeArr{iRun}(viNonAlertedCued);
        nonAlertedTargetsArrCuedCondNew{iRun}(viNonAlertedUncued) = nonAlertedTargetsArrCuedCond{iRun}(viNonAlertedCued);                 
 
    end 
    
end
            
            
 function [ alertArrNew, cuedFixationCrossArrNew, encodingArrNew, retrievalArrNew, changeArrNew, nonAlertedTargetsArrCuedCondNew ] = ...
                OLD_getShuffledTrials_OLD(alertArr, cuedFixationCrossArr, encodingArr, retrievalArr, changeArr, nonAlertedTargetsArrCuedCond )
                      
	for iRun = 1:size(alertArr,2)  
        
        iTrialNum = size(changeArr{1,iRun},2);
        
        % the first 3 trials should be cued correctly! (so that the subject doesn't get confused)
        % this condition is met for the original arrays, but has to be maintained for the shuffled arrays!
        % so first pick 3 trials with nonAlertedTargetsArrCuedCondNew == 0, then shuffle the rest
        
        % this does not work in the sample runs with 4 trials in total,
        % therefore use 
        
        viFirstThreeIndices = find(nonAlertedTargetsArrCuedCond{iRun}==0);
        viFirstThreeIndices = viFirstThreeIndices(find(viFirstThreeIndices > 1)); % do not use the first trial
        if length(viFirstThreeIndices) < 3
           viFirstThreeIndices = randsample(viFirstThreeIndices,length(viFirstThreeIndices));
        else
           viFirstThreeIndices = randsample(viFirstThreeIndices,3);
        end
 
        % now, we have the indices of the 3 trials out of iTrialNum that become the first 3 trials after shuffling
        % next, we shuffle the remaining trial indices (iTrialNum - 3 left)
        iRemainingIndices = find(ismember((1:iTrialNum),viFirstThreeIndices)==0);
                
        iRemainingIndices = randsample(iRemainingIndices, size(iRemainingIndices,2));
        iNewIndices = [ viFirstThreeIndices iRemainingIndices ];
        
        alertArrNew{iRun}             = alertArr{iRun}(iNewIndices);
        cuedFixationCrossArrNew{iRun} = cuedFixationCrossArr{iRun}(iNewIndices);
        encodingArrNew{iRun}          = encodingArr{iRun}(iNewIndices);
        retrievalArrNew{iRun}         = retrievalArr{iRun}(iNewIndices);
        changeArrNew{iRun}            = changeArr{iRun}(iNewIndices);
        nonAlertedTargetsArrCuedCondNew{iRun} = nonAlertedTargetsArrCuedCond{iRun}(iNewIndices);        

    end            
end

