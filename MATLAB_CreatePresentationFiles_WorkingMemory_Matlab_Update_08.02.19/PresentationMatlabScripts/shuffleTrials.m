function [ alertArrNew, encodingArrNew, retrievalArrNew, changeArrNew, nonAlertedTargetsArrNew ] = ...
                shuffleTrials(alertArr, encodingArr, retrievalArr, changeArr, nonAlertedTargetsArr )
            
	for iRun = 1:size(alertArr,2)  
        
        iTrialNum = size(changeArr{1,iRun},2);
        
        % the first 3 trials should be cued correctly! (so that the subject doesn't get confused)
        % this condition is met for the original arrays, but has to be maintained for the shuffled arrays!
        % so first pick 3 trials with nonAlertedTargetsArrNew == 0, then shuffle the rest
        
        iFirstThreeIndices = find(nonAlertedTargetsArr{iRun}==0);
        iFirstThreeIndices = iFirstThreeIndices(find(iFirstThreeIndices > 1)); % do not use the first trial
        iFirstThreeIndices = randsample(iFirstThreeIndices,3); 
 
        % now, we have the indices of the 3 trials out of iTrialNum that become the first 3 trials after shuffling
        % next, we shuffle the remaining trial indices (iTrialNum - 3 left)
        iRemainingIndices = find(ismember((1:iTrialNum),iFirstThreeIndices)==0);
                
        iRemainingIndices = randsample(iRemainingIndices, size(iRemainingIndices,2));
        iNewIndices = [ iFirstThreeIndices iRemainingIndices ];
        
        alertArrNew{iRun}             = alertArr{iRun}(iNewIndices);
        encodingArrNew{iRun}          = encodingArr{iRun}(iNewIndices);
        retrievalArrNew{iRun}         = retrievalArr{iRun}(iNewIndices);
        changeArrNew{iRun}            = changeArr{iRun}(iNewIndices);
        nonAlertedTargetsArrNew{iRun} = nonAlertedTargetsArr{iRun}(iNewIndices);        

    end            
end

