function [vIndexFlickerCond, vIndexFlickerCondTrial, vRandomizedFlickerNumber, vRandomizedEncodingTimes, vRandomizedTotalEncodingTimes] = ...
                getRandomizedFlickerFrequencies(nTrialsPerRun, viNumBitmapFlicker, viEncodingTimes, viTotalEncodingTime)
    %%% Study: ATWM1

    iNumRepetitions = nTrialsPerRun / size(viNumBitmapFlicker,2);
    %iRest = mod(totalNumTrials, size(viNumBitmapFlicker,2)); % enforce suitable number of trials right at the start

    vIndexFlickerCond = []; % keep track of original subcondition
    vIndexFlickerCondTrial = []; % keep track of original subcondition
    vFlickerNumbersForCompleteRun = [];
    vEncodingTimesForCompleteRun = [];
    vTotalEncodingTimeForCompleteRun = [];
    
    for iFlickerDuration = 1:size(viNumBitmapFlicker,2)        
        
        vIndexFlickerCond = [ vIndexFlickerCond ones(1,iNumRepetitions)*iFlickerDuration ];
        vIndexFlickerCondTrial = [ vIndexFlickerCondTrial 1:iNumRepetitions ];
        
        vFlickerNumbersForCompleteRun = [ vFlickerNumbersForCompleteRun ones(1,iNumRepetitions)*viNumBitmapFlicker(iFlickerDuration) ];
        %vRandomizedFlickerNumber = [ vRandomizedFlickerNumber viNumBitmapFlicker(1:iRest) ];    
        vEncodingTimesForCompleteRun = [ vEncodingTimesForCompleteRun ones(1,iNumRepetitions)*viEncodingTimes(iFlickerDuration) ];
        %vRandomizedEncodingTimes = [ vRandomizedEncodingTimes vRandomizedEncodingTimes(1:iRest) ];        
        vTotalEncodingTimeForCompleteRun = [ vTotalEncodingTimeForCompleteRun ones(1,iNumRepetitions)*viTotalEncodingTime(iFlickerDuration) ];
    end
    
    % do not permute; keep order of vbNonAlertedTargets in getStimuli.m
    %viRandomizedTrialIndices = randperm(size(vFlickerNumbersForCompleteRun,2));
    viRandomizedTrialIndices = [1:size(vFlickerNumbersForCompleteRun,2)];
    vIndexFlickerCond = vIndexFlickerCond(viRandomizedTrialIndices);
    vIndexFlickerCondTrial = vIndexFlickerCondTrial(viRandomizedTrialIndices);
    
    vRandomizedFlickerNumber = vFlickerNumbersForCompleteRun(viRandomizedTrialIndices);    
    vRandomizedEncodingTimes = vEncodingTimesForCompleteRun(viRandomizedTrialIndices);
    vRandomizedTotalEncodingTimes = vTotalEncodingTimeForCompleteRun(viRandomizedTrialIndices);

end
