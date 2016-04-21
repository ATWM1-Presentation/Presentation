function writeTrialSpecifications(filePath, iSession, strLeftRight, bCreateExtraTrials, trialSpecificationFile, trialSpecificationFileFormat, stimulusSpecifications, ...
                    strExpCond, strExpCondShort, trialOrder, randomizedEncodingTimes, vRandomizedTotalEncodingTimes, stimulusCoordinateArray, nPositions, nRuns, ...
                    viTrialsPerRun, alertStimulusArray, cuedFixationCrossArray, ...
                    encodingStimulusArray, retrievalStimulusArray, changeSpecificationArray, nonAlertedTargetsArray, ...
                     vsChangeTarget, timingParameters, bIsUncued, strExpDevice)        
    
    for iRun = 1:nRuns
       
        if strcmp(strExpDevice,'MEG') && nRuns == 1
            iRunSceFile = iSession;
        else
            iRunSceFile = iRun;
        end
        
        nTrialsPerRun = viTrialsPerRun(iRun);
        trialSpecificationFileName = sprintf('%s_Run%i%s', trialSpecificationFile, iRunSceFile, trialSpecificationFileFormat);
        strFilePathArrayData = [filePath, trialSpecificationFileName];
        fid = fopen(strFilePathArrayData, 'wt', 'n', 'UTF-8');

        encodingTriggerTimes = [];
        retrievalTriggerTimes = [];
        
        for t = 1:nTrialsPerRun

            %%% Determine, whether current trial is a change or nochange trial 
            changeIndex = changeSpecificationArray{iRun};        
            nonAlertedTargets = nonAlertedTargetsArray{iRun};

            %%% Create encoding code
            
            if strcmp(stimulusSpecifications.strCond, 'Nonsalient') == true                
                if bIsUncued
                    iPortCodeEncoding = 44;
                else
                    iPortCodeEncoding = 43;
                end                
            else
                if bIsUncued
                    iPortCodeEncoding = 42;
                else
                    iPortCodeEncoding = 41;
                end
            end
            
            %%% Get encoding / retrieval array
            strAnglesEncoding = 'gabor_patch_orientation';
            strAnglesRetrieval = 'retrieval_patch_orientation';
            iTargetPos = 0;
            
            for p = 1:nPositions
                
                strAnglesEncoding = [ strAnglesEncoding '_' encodingStimulusArray{iRun}{t}.stimuli{1,p}(7:9) ];                
                
                if ~isempty(strfind(retrievalStimulusArray{iRun}{t}{p},'_framed'))
                    iTargetPos = p;
                    strAnglesRetrieval = [ strAnglesRetrieval '_' retrievalStimulusArray{iRun}{t}{p}(7:9) ];
                end
            end
                
            %%% Create retrieval code
            if nonAlertedTargets(t)
                strTargetAlert = 'UncuedRetriev';
                if changeIndex(t) == 0    % NoChange
                    iPortCodeRetrieval = 64;
                else                   % DoChange
                    iPortCodeRetrieval = 63;
                end
            else
                strTargetAlert = 'CuedRetrieval';
                if changeIndex(t) == 0    % NoChange
                    iPortCodeRetrieval = 62;
                else                   % DoChange
                    iPortCodeRetrieval = 61;
                end
            end
            
            % changeIndex(t) corresponds to mouse buttons: 0 = NoChange, 1 = DoChange
            strRetrievalCode = sprintf('"%i_%i_Retrieval_%s_%s_%s_%s_retrieval_position_%d"', iRunSceFile, t, strExpCond, vsChangeTarget{changeIndex(t)+1}, strTargetAlert, strAnglesRetrieval, iTargetPos);
            strEncodingCodeUnquoted = sprintf('%i_%i_Encoding_%s_%s_%s', iRunSceFile, t, strExpCond, vsChangeTarget{changeIndex(t)+1}, strTargetAlert);
            
            encodingCode = sprintf('"%s_%i_%i_%i_%i_%i_%i_%s_target_position_%s_retrieval_position_%d"', strEncodingCodeUnquoted, ...
                       timingParameters.alertTime, trialOrder.prepTime_interval{iRun}{t}, vRandomizedTotalEncodingTimes{iRun}(t), ...
                       trialOrder.Delay_interval{iRun}{t}, timingParameters.retrievalTime, trialOrder.ITI_interval{iRun}{t}, ...
                       strAnglesEncoding, cuedFixationCrossArray{iRun}{t}, iTargetPos);

            if t < 100
                encodingCode = sprintf(' %s', encodingCode);
                if t < 10
                    encodingCode = sprintf(' %s', encodingCode);
                end
            end               
            encodingCode = AppendBlanks(encodingCode, 190);
            
            %%% Write the timing parameters
            % first MRI trigger with cue onset!
           
            if t == 1                                
                encodingTriggerTimes(t) = ( timingParameters.experimentBaseline + timingParameters.alertTime + timingParameters.preparationTime ) / timingParameters.TR + 1;
                % +1 because first trigger starts one-based, not
                % zero-based, at baseline trial (first trial in MRI
                % experiment)
            else
                timeSinceLastTrigger = timingParameters.alertTime + trialOrder.prepTime_interval{iRun}{t} + ...
                                                vRandomizedTotalEncodingTimes{iRun}(t-1) + trialOrder.Delay_interval{iRun}{t-1} + ...
                                                timingParameters.retrievalTime + trialOrder.ITI_interval{iRun}{t-1};
                encodingTriggerTimes(t) = encodingTriggerTimes(t-1) + timeSinceLastTrigger / timingParameters.TR;
            end
            retrievalTriggerTimes(t) = encodingTriggerTimes(t) + ( vRandomizedTotalEncodingTimes{iRun}(t) + trialOrder.Delay_interval{iRun}{t} ) / timingParameters.TR;

            dbPresentationDelayCompensation = 8; % ms
            dbPresentationDelayCompensationTR = 50; % ms

            switch strExpDevice
                case 'MRI'
                   %fprintf(fid, '%5i %5i %5i %5i %5i %5i %5i %5i      ', ceil(encodingTriggerTimes(t)), timingParameters.alertTime, ...
                   fprintf(fid, '%5i %5i %5i %5i %5i %5i %5i %5i %5i      ', encodingTriggerTimes(t), retrievalTriggerTimes(t), ...
                            timingParameters.alertTime - dbPresentationDelayCompensation, ...
                            trialOrder.prepTime_interval{iRun}{t} - dbPresentationDelayCompensation, ...
                            vRandomizedTotalEncodingTimes{iRun}(t), ...
                            randomizedEncodingTimes{iRun}(t) - dbPresentationDelayCompensation, ...
                            trialOrder.Delay_interval{iRun}{t} - dbPresentationDelayCompensation - dbPresentationDelayCompensationTR, ...
                            timingParameters.retrievalTime - dbPresentationDelayCompensation, ...
                            trialOrder.ITI_interval{iRun}{t}  - dbPresentationDelayCompensation - dbPresentationDelayCompensationTR );
                otherwise
                   fprintf(fid, '%5i %5i %5i %5i %5i %5i %5i %5i %5i      ', iPortCodeEncoding, iPortCodeRetrieval, ...
                            timingParameters.alertTime - dbPresentationDelayCompensation, ...
                            trialOrder.prepTime_interval{iRun}{t} - dbPresentationDelayCompensation, ...
                            vRandomizedTotalEncodingTimes{iRun}(t), ...
                            randomizedEncodingTimes{iRun}(t) - dbPresentationDelayCompensation, ...
                            trialOrder.Delay_interval{iRun}{t}  - dbPresentationDelayCompensation, ...
                            timingParameters.retrievalTime - dbPresentationDelayCompensation, ...
                            trialOrder.ITI_interval{iRun}{t} - dbPresentationDelayCompensation );                       
            end

            %%% Write the alerting cross
            fprintf(fid, '%s    ', stimulusSpecifications.fixationCross);

            %%% Write the encoding array
            for p = 1:nPositions
                fprintf(fid, '%s ', encodingStimulusArray{iRun}{t}.stimuli{1,p});
            end
            fprintf(fid, '   ');

            %%% Write alternating bitmaps (flickering effect)
            for p = 1:nPositions
                fprintf(fid, '%s ', encodingStimulusArray{iRun}{t}.stimuli{2,p});
            end
            fprintf(fid, '   ');

            %%% Write encoding code
            fprintf(fid, '%s', encodingCode);

            %%% Write the retrieval array
            for p = 1:nPositions
                fprintf(fid, '%s ', retrievalStimulusArray{iRun}{t}{1,p});
            end
            fprintf(fid, '   ');

            %%% Write the cueing array
            for p = 1:nPositions
                fprintf(fid, '%s ', alertStimulusArray{iRun}{t}.stimuli{1,p});
            end
            fprintf(fid, '   ');
            
            if bIsUncued
                fprintf(fid, 'fixation_cross_white   ');
            else
                fprintf(fid, 'fixation_cross_target_position_%s   ', cuedFixationCrossArray{iRun}{t});
            end

            %%% Write retrieval code
            if t < 100
                strRetrievalCode = sprintf(' %s', strRetrievalCode);
                if t < 10
                    strRetrievalCode = sprintf(' %s', strRetrievalCode);
                end
            end  
            strRetrievalCode = AppendBlanks(strRetrievalCode, 50);        
            fprintf(fid, '%s   ', strRetrievalCode);
            
            %%% Write target mouse button / set button response code
            if strcmp(strLeftRight, 'LR')
                % target button 1 (left) = NoChange
                % target button 2 (right) = Change
                fprintf(fid, '%d   ', changeIndex(t)+1);
            else
                % RL condition -> exchange target buttons
                % target button 1 (left)= Change
                % target button 2 (right) = NoChange
                if (changeIndex(t)+1) == 1
                    fprintf(fid, '2   ');
                else
                    fprintf(fid, '1   ');
                end
            end

            %%% Write the stimulus coordinates
            for p = 1:nPositions
                fprintf(fid, ' %.2f', stimulusCoordinateArray{p}.x, stimulusCoordinateArray{p}.y);
            end

            %%% Write the end of the line and switch to the next line
            fprintf(fid, ';\r\n');
        end

        fclose(fid);
        
        if bCreateExtraTrials
            %strPathTemplateFile = sprintf('%sTemplates/Template_ATWM1_%s_Instruction.sce', filePath, strExpCond);
            strPathTemplateFile = sprintf('%sATWM1_%s_Instruction.sce', filePath, strExpCondShort);
            strPathOutputSceFile = sprintf('%sATWM1_%s_Instruction.sce', filePath, strExpCondShort);
            transferArrayToTemplateSceFile(strPathTemplateFile, strFilePathArrayData, strPathOutputSceFile, bCreateExtraTrials, strLeftRight);
        else
            %strPathTemplateFile = sprintf('%sTemplates/Template_ATWM1_%s_Run%i.sce', filePath, strExpCond, iRunSceFile);
            strPathTemplateFile = sprintf('%sATWM1_%s_Run%i.sce', filePath, strExpCondShort, iRunSceFile);
            strPathOutputSceFile = sprintf('%sATWM1_%s_Run%i.sce', filePath, strExpCondShort, iRunSceFile);            
            transferArrayToTemplateSceFile(strPathTemplateFile, strFilePathArrayData, strPathOutputSceFile, bCreateExtraTrials, strLeftRight);
        end                
  
    end

end

function str = AppendBlanks(str, iMaxTextSize)

    iNumBlanksToAppend = iMaxTextSize - length(str);
    singleBlank = sprintf(' ');
    blankSpaces = '';
    for iBlank = 1:iNumBlanksToAppend
        blankSpaces = sprintf('%s%s', blankSpaces, singleBlank);
    end
    str = sprintf('%s%s', str, blankSpaces);
        
end
