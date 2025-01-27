function aStrFilePath = CreatePresentationFiles(parametersOperatingSystem, strExpDevice, strSubjectID, strPermutationType, strLeftRight, strGroup, strRootFolder, strScriptFolderWM)

%{
    strExpDevice = 'MEG'; % 'MEG', 'MRI', 'PSY'
    strSubjectID = 'Test99';
    strPermutationType = 'P2';       
    strLeftRight = 'LR'; % set 'LR' or 'RL'
    strGroup = 'CONT'; % 'SCHI', 'ADHD', 'BIPO', 'RELS'       
    strRootFolder = '/data/projects/ATWM1/Presentation/';          
  %}  
    viNumBitmapFlicker = [1];
    viEncodingTimes = [133];   
    % complete time span for encoding in ms
    viTotalEncodingTime = [133*3];
 
	strExperimentName = 'Working_Memory';               

    switch strExpDevice
        case 'MRI'            
            vbExtraTrials = [0 1]; % generate no extra excercise trials in introduction scenario file
            viSessionNumbers = [1];
            [strSubjectFolder] = CreateFolders(parametersOperatingSystem, strRootFolder, strSubjectID, strPermutationType, strLeftRight, strGroup, strExperimentName, strExpDevice);
        case 'MEG'        
            vbExtraTrials = [0 1]; % generate extra excercise trials in introduction scenario file
            viSessionNumbers = [1 2];
            [strSubjectFolderSession1, strSubjectFolderSession2] = CreateFoldersMEG(parametersOperatingSystem, strRootFolder, strSubjectID, strPermutationType, strLeftRight, strGroup, strExperimentName, strExpDevice, viSessionNumbers);
        case 'PSY'
            vbExtraTrials = [0 1]; % generate extra excercise trials in introduction scenario file
            viSessionNumbers = [1];
            [strSubjectFolder] = CreateFolders(strRootFolder, strSubjectID, strPermutationType, strLeftRight, strGroup, strExperimentName, strExpDevice);
    end
    
       
    for iSession = viSessionNumbers

        if strcmp(strExpDevice,'MEG')
            if iSession == 1
                filePath = strSubjectFolderSession1;   
            else
                filePath = strSubjectFolderSession2;   
            end
        else
        	filePath = strSubjectFolder;
        end
   
        aStrFilePath{iSession} = filePath;

        for bCreateExtraTrials = vbExtraTrials 

            for iEncTime = 1:length(viTotalEncodingTime)

                totalEncodingTime = viTotalEncodingTime(iEncTime);

                strMessage = sprintf('Total encoding time = %d ms', totalEncodingTime);
                fprintf(strMessage);

                dbPercNonAlertedTargets = [];
                iCond{1} = 1; strCond{1} = 'Salient';    dbPercNonAlertedTargets(1) = 0.2; 
                iCond{2} = 2; strCond{2} = 'Nonsalient'; dbPercNonAlertedTargets(2) = 0.2; 

                for bIsUncued = [ true false]
                    for i=1:size(dbPercNonAlertedTargets,2)
                        strExpCondShort = sprintf('%s_%s_%s', strExperimentName, strExpDevice, strCond{i});
                        strExpCond = sprintf('%s_%s_%s_%s_%s', strExperimentName, strExpDevice, strPermutationType, strLeftRight, strCond{i});
                        strCondCode = strCond{i};
                        setupParadigm(strExpDevice, iSession, strLeftRight, filePath, strScriptFolderWM, bCreateExtraTrials, dbPercNonAlertedTargets(i), strCondCode, iCond{i}, ...
                        strExpCond, strExpCondShort, viNumBitmapFlicker, viEncodingTimes, viTotalEncodingTime, bIsUncued); % EXP5 cue before endcoding
                    end
                end
            end
        end
    end
end
