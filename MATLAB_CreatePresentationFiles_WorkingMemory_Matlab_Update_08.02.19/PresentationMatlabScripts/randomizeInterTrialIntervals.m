function randomizedTimeIntervals = randomizeInterTrialIntervals(bMRTMode, ...
                                            nRuns, stimuliArray, nTrialsPerRun, itiNoJitter, delayTimeNoJitter, prepTimeNoJitter)

    %%% Study: ATWM1

    if bMRTMode
        vJitterITI = [ -1000, 1000 ]; 
        vJitterDelay = [ -1000, 1000 ];
        vJitterPrepTime = [ 0, 0 ]; % add at least to elements so that randsample does not fail
    else
        % MEG
        vJitterITI = [ -350:50:350 ];
        vJitterDelay = [ -250:50:250 ];
        vJitterPrepTime = [ 0, 0 ]; % add at least to elements so that randsample does not fail
    end

    for iRun = 1:nRuns

        interTrialInterval = [];
        interStimulusIntervals = [];
        prepTimeIntervals = [];
        
        interTrialInterval(1:size(stimuliArray{iRun},2)) = itiNoJitter;
        interStimulusIntervals(1:size(stimuliArray{iRun},2)) = delayTimeNoJitter;
        prepTimeIntervals(1:size(stimuliArray{iRun},2)) = prepTimeNoJitter;
        
        orderedInterTrialInterval = interTrialInterval; 
        orderedInterStimulusInterval = interStimulusIntervals; 
        orderedPrepTimesInterval = prepTimeIntervals; 

        for iTrial = 1:nTrialsPerRun
            iJitterITI = randsample(vJitterITI, 1);
            iJitterDelay = randsample(vJitterDelay, 1);
            iJitterPrepTime = randsample(vJitterPrepTime, 1);
            
            orderedInterTrialInterval(iTrial) = orderedInterTrialInterval(iTrial) + iJitterITI;
            orderedInterStimulusInterval(iTrial) = orderedInterStimulusInterval(iTrial) + iJitterDelay;            
            orderedPrepTimesInterval(iTrial) = orderedPrepTimesInterval(iTrial) + iJitterPrepTime;            
        end

        ITI_interval{iRun} = orderedInterTrialInterval;
        Delay_interval{iRun} = orderedInterStimulusInterval;
        prepTime_interval{iRun} = orderedPrepTimesInterval;

        for iTrial = 1:nTrialsPerRun       
            %%% Write trial index
            randomizedTimeIntervals.ITI_interval{iRun}{iTrial} = ITI_interval{iRun}(iTrial);
            randomizedTimeIntervals.Delay_interval{iRun}{iTrial} = Delay_interval{iRun}(iTrial);
            randomizedTimeIntervals.prepTime_interval{iRun}{iTrial} = prepTime_interval{iRun}(iTrial);
        end
    end
end
