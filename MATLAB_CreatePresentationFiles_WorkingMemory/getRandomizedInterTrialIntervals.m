function randomizedTimeIntervals = getRandomizedInterTrialIntervals(strExpDevice, ...
                                            nRuns, stimuliArray, viTrialsPerRun, itiNoJitter, delayTimeNoJitter, prepTimeNoJitter)

    %%% Study: ATWM1

    switch strExpDevice
        case 'MRI'
            vJitterITI = [ -1000, 1000 ]; 
            vJitterDelay = [ -1000, 1000 ];
            vJitterPrepTime = [ 0, 0 ]; % add at least two elements so that randsample does not fail
        otherwise        
            vJitterITI = [ -350:50:350 ];
            vJitterDelay = [ -250:50:250 ];
            vJitterPrepTime = [ 0, 0 ]; % add at least two elements so that randsample does not fail
    end

    for iRun = 1:nRuns

        nTrialsPerRun = viTrialsPerRun(iRun);
        
        interTrialInterval = [];
        interStimulusIntervals = [];
        prepTimeIntervals = [];
        
        interTrialInterval(1:size(stimuliArray{iRun},2)) = itiNoJitter;
        interStimulusIntervals(1:size(stimuliArray{iRun},2)) = delayTimeNoJitter;
        prepTimeIntervals(1:size(stimuliArray{iRun},2)) = prepTimeNoJitter;
        
        orderedInterTrialInterval = interTrialInterval; 
        orderedInterStimulusInterval = interStimulusIntervals; 
        orderedPrepTimesInterval = prepTimeIntervals; 

        %for iTrial = 1:nTrialsPerRun
        %    iJitterITI = randsample(vJitterITI, 1);
        %    iJitterDelay = randsample(vJitterDelay, 1);
        %    iJitterPrepTime = randsample(vJitterPrepTime, 1);
        %    orderedInterTrialInterval(iTrial) = orderedInterTrialInterval(iTrial) + iJitterITI;
        %    orderedInterStimulusInterval(iTrial) = orderedInterStimulusInterval(iTrial) + iJitterDelay;            
        %    orderedPrepTimesInterval(iTrial) = orderedPrepTimesInterval(iTrial) + iJitterPrepTime;            
        %end        
        
        % do not simply randomize, but guarantee fixed duration for every run
        % and condition
        orderedITIsPerRun = repmat(vJitterITI,1,ceil(nTrialsPerRun/length(vJitterITI)));
        orderedISIsPerRun = repmat(vJitterDelay,1,ceil(nTrialsPerRun/length(vJitterDelay)));
        
        % special request by Robert (always use longer jitter interval when number of trials is odd)
        % but do it only for one jitterd interval (ITI instead of ISI) so
        % that a fixed total TR num is reached
        if mod(nTrialsPerRun,2) == 1
            orderedITIsPerRun = orderedITIsPerRun(2:nTrialsPerRun+1);
            %orderedISIsPerRun = orderedISIsPerRun(2:nTrialsPerRun+1);
            orderedISIsPerRun = orderedISIsPerRun(1:nTrialsPerRun);
        else
            orderedITIsPerRun = orderedITIsPerRun(1:nTrialsPerRun);
            orderedISIsPerRun = orderedISIsPerRun(1:nTrialsPerRun);
        end
        
        jitteredITIsPerRun = orderedITIsPerRun(randsample(length(orderedITIsPerRun),length(orderedITIsPerRun))');        
    	orderedInterTrialInterval = orderedInterTrialInterval + jitteredITIsPerRun;                
        
        jitteredInterStimulusIntervalsPerRun = orderedISIsPerRun(randsample(length(orderedISIsPerRun),length(orderedISIsPerRun))');
        orderedInterStimulusInterval = orderedInterStimulusInterval + jitteredInterStimulusIntervalsPerRun;
        
        % not required anymore
        %orderedPrepTimesInterval(iTrial) = orderedPrepTimesInterval(iTrial) + iJitterPrepTime;                  

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
