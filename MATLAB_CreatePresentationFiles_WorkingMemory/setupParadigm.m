function setupParadigm(strExpDevice, iSession, strLeftRight, filePath, strScriptFolderWM, bCreateExtraTrials, dbPercNonAlertedTargets, strCond, iCond, strExpCond, strExpCondShort, ...
                            viNumBitmapFlicker, viEncodingTimes, viTotalEncodingTime, bIsUncued)
    % (c) Robert Bittner
    % Study: ATWM1
    % This function creates the trials in presentation format.

    %% Parameter init
       
    nPositions = 4;
    wmLoad = 2;

    % strings for output file
    vsChangeTarget{1} = 'NoChange'; % corresponds with change = 0
    vsChangeTarget{2} = 'DoChange'; % corresponds with change = 1

    % Parameters for imaginary circle used for position coordinates (see calculateStimulusPositionInArray.m)
    circleParameters.radius = 65;
    circleParameters.xCenter = 0;
    circleParameters.yCenter = 0;

    % The following variable determines, whether or not stimuli can be
    % presented in adjacent positions or whether a gap is allways required.
    % 0 = a gap is allways required
    % 1 = stimuli can be presented in adjacent positions
    % e.g. noGaps = 0 : nPositions = 6, wmLoad = 4 -> 2 gaps possible
    noGaps = 1;

    % Beamer parameters
    screenFramerate = 60;
  
    % MR Sequence parameters
    timingParameters.TR = 2000;
  
    % total time of all stimuli bitmaps presented, e.g. 300ms
    timingParameters.totalEncodingTime = viTotalEncodingTime;
    
    timingParameters.alertTime = 300; % cue
    timingParameters.preparationTime = 300; 
    timingParameters.retrievalTime = 3000;
    
    switch strExpDevice
        case 'MRI'
            timingParameters.experimentBaseline = 10000 - (timingParameters.alertTime + timingParameters.preparationTime);
            timingParameters.itiNoJitter = 12000 + timingParameters.TR - (timingParameters.alertTime + timingParameters.preparationTime); % inter trial interval
            % Delay = inter stimulus interval = delay   
            timingParameters.delayTimeNoJitter = 11000 - timingParameters.totalEncodingTime; 
            % e.g. cue + prep.time + encoding = 1200 ms + 11800 +/- 1000 ms = 12000 or 14000ms -> 6...7 TR between cue and retrieval onset
        otherwise
            timingParameters.experimentBaseline = 4000;
            timingParameters.itiNoJitter = 2250;
            timingParameters.delayTimeNoJitter = 2000;
    end
    
    % requires corresponging template files (must already exist!)
    % !!! take care when setting odd trial numbers !!!
    % -> you might get problem with fixed mean TR values because of 
    % getRandomizedInterTrialIntervals (depends on number elements in the jitter vector, too)   
    
    if bCreateExtraTrials % extra excercise trials 
        switch strExpDevice
            case 'MRI'
                viTrialsPerRun = [ 4 ]; % extra excercise trials
            case 'MEG'        
                viTrialsPerRun = [ 4 ]; % extra excercise trials
            case 'PSY';
                viTrialsPerRun = [ 8 ]; % extra excercise trials
        end       
    else
        switch strExpDevice
            case 'MRI'            
                viTrialsPerRun = [ 15 ];
            case 'MEG'        
                viTrialsPerRun = [ 70 ];
            case 'PSY';
                viTrialsPerRun = [ 20 ];
        end          
    end
    nRuns = length(viTrialsPerRun);
    
    % Define the proportion of nonmatch trials
    dbPercChangeTrials = 0.5;

    stimulusSpecifications = getStimulusSpecifications(strCond);

    % The coordinates for each stimulus position on an imaginary cirlce are determined
    for positionNo = 1:nPositions
        stimulusCoordinateArray{positionNo} = getStimulusPositionInArray(circleParameters, nPositions, positionNo);
    end

    
    %% actual stimulus configuration and randomization
    
    for iRun = 1:nRuns
             
        strDebugMessage = sprintf('cond = %s, iRun = %d', strCond, iRun);
        disp(strDebugMessage);
        
        % EXP5: test influence of flicker frequency (not done with EXP4)
        % for every run, add "subconditions" according to the number of different flicker durations (=encoding times)
        
        nTrialsPerRun = viTrialsPerRun(iRun);
        
        % The stimulus positions and bitmap types in the encoding array are randomly determined
        if mod(nTrialsPerRun,size(viEncodingTimes,2)) ~= 0
            disp('Sorry, please adapt your trial number per run, so that no rest remains when dividing by the number of different flicker frequencies.');
            return; 
        end
        
        nTrialsPerRunAndSubcondition = nTrialsPerRun/ size(viEncodingTimes,2);
        
        for iFlickerFreq = 1:size(viEncodingTimes,2)
            
            %if mod(iRun,2)==0
            %    nNonAlertedTargets = floor(nTrialsPerRunAndSubcondition*dbPercNonAlertedTargets);
            %else
            %    nNonAlertedTargets = ceil(nTrialsPerRunAndSubcondition*dbPercNonAlertedTargets);
            %end
            if bCreateExtraTrials
                nNonAlertedTargets = 0;
            else
                nNonAlertedTargets = round(nTrialsPerRunAndSubcondition*dbPercNonAlertedTargets);
            end
        
            [alertArrayTmp{iRun}{iFlickerFreq}, cuedFixationCrossArrayTmp{iRun}{iFlickerFreq}, encodingArrayTmp{iRun}{iFlickerFreq}, retrievalArrayTmp{iRun}{iFlickerFreq}, changeArrayTmp{iRun}{iFlickerFreq}, ...
                 nonAlertedTargetsTmpCuedCond{iRun}{iFlickerFreq}, nonAlertedTargetsTmpUncuedCond{iRun}{iFlickerFreq} ] = ...
                getStimuli(strExpDevice, iRun, stimulusSpecifications, iCond, nTrialsPerRunAndSubcondition, dbPercChangeTrials, nNonAlertedTargets, dbPercNonAlertedTargets, nPositions, wmLoad, noGaps);
        end
        
        % randomize flicker durations and then flatten cell array
        % thus, every flicker duraction condition has the same amount of changend/unchanged trials, and non-cued target trials
        % besides, these flicker conditions are equally distibuted over each run
        [vIndexFlickerCond, vIndexFlickerCondTrial, vRandomizedFlickerNumber{iRun}, vRandomizedEncodingTimes{iRun}, vRandomizedTotalEncodingTime{iRun}] = ...
                        getRandomizedFlickerFrequencies(nTrialsPerRun, viNumBitmapFlicker, viEncodingTimes, viTotalEncodingTime);
                          
        for iTrial = 1:nTrialsPerRun            
            alertArray{iRun}{iTrial} = alertArrayTmp{iRun}{vIndexFlickerCond(iTrial)}{vIndexFlickerCondTrial(iTrial)};
            cuedFixationCrossArray{iRun}{iTrial} = cuedFixationCrossArrayTmp{iRun}{vIndexFlickerCond(iTrial)}{vIndexFlickerCondTrial(iTrial)};
            encodingArray{iRun}{iTrial} = encodingArrayTmp{iRun}{vIndexFlickerCond(iTrial)}{vIndexFlickerCondTrial(iTrial)};
            retrievalArray{iRun}{iTrial} = retrievalArrayTmp{iRun}{vIndexFlickerCond(iTrial)}{vIndexFlickerCondTrial(iTrial)};
            changeArray{iRun}(iTrial) = changeArrayTmp{iRun}{vIndexFlickerCond(iTrial)}(vIndexFlickerCondTrial(iTrial));
            nonAlertedTargetsCuedCond{iRun}(iTrial) = nonAlertedTargetsTmpCuedCond{iRun}{vIndexFlickerCond(iTrial)}(vIndexFlickerCondTrial(iTrial));
            nonAlertedTargetsUncuedCond{iRun}(iTrial) = nonAlertedTargetsTmpUncuedCond{iRun}{vIndexFlickerCond(iTrial)}(vIndexFlickerCondTrial(iTrial));
        end
    
    end
 
    %% randomize time intervals
    
    % keeps track of original indices, maps to original index of the corresponding condition
    randomizedTimeIntervals = getRandomizedInterTrialIntervals(strExpDevice, ...
                     nRuns, encodingArray, viTrialsPerRun, timingParameters.itiNoJitter, timingParameters.delayTimeNoJitter, timingParameters.preparationTime);

    if bIsUncued
        strExpCondShort = strcat(strExpCondShort,'_Uncued');
        trialSpecificationFile = sprintf('array_%s_Uncued', strCond);
    else
        strExpCondShort = strcat(strExpCondShort,'_Cued');            
        trialSpecificationFile = sprintf('array_%s_Cued', strCond);    
    end
    
    trialSpecificationFileFormat = '.txt';
    
    
    %% write the trial specificiations
    writeTrialSpecifications(filePath, strScriptFolderWM, iSession, strLeftRight, bCreateExtraTrials, trialSpecificationFile, trialSpecificationFileFormat, stimulusSpecifications, ...
                             strExpCond, strExpCondShort, randomizedTimeIntervals, vRandomizedEncodingTimes, vRandomizedTotalEncodingTime, stimulusCoordinateArray, nPositions, nRuns, viTrialsPerRun, ...
                             alertArray, cuedFixationCrossArray, encodingArray, retrievalArray, changeArray, nonAlertedTargetsCuedCond, ...
                             vsChangeTarget, timingParameters, bIsUncued, strExpDevice);
                         
end
