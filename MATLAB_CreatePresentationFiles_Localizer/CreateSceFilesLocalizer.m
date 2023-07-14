function strSubjectFolder = CreateSceFilesLocalizer(parametersOperatingSystem, strSubjectID, strGroup, strRootFolder)
    
    %strSubjectID = 'Test99';
    %strGroup = 'CONT'; % 'SCHI', 'ADHD', 'BIPO', 'RELS'
    %strRootFolder = '/data/projects/ATWM1/Presentation/';  
    
    
    %% Create presentation folder for new subject based on template folder
    strTemplateSourceFolder = sprintf('%sPresentationFiles_Templates/', strRootFolder);
    strSubjectFolder = sprintf('%sPresentationFiles_Subjects/%s/', strRootFolder, strGroup);

    strTemplate = sprintf('%sATWM1_Localizer_MRI_MySubjectID/', strTemplateSourceFolder);

    strSubjectFolder = sprintf('%sATWM1_Localizer_MRI_MySubjectID/', strSubjectFolder);
    strSubjectFolder = strrep(strSubjectFolder,'MySubjectID', strSubjectID);    
    
    %if exist(strSubjectFolder) || exist(strSubjectFolderSession2)
    %    disp('Warning! One of the destination folders already exists; avoid overwriting existing experiments!');
    %    return;
    %end

    mkdir(strSubjectFolder);

    %% Copy files
    if parametersOperatingSystem.bOsIsLin
        % Differenct behaviour for MacOSX and linux.
        % For linux, add . after source directory so that only the content of this directory is copied
        strCopyCommand = sprintf('cp -r %s. %s', strTemplate, strSubjectFolder);
        system(strCopyCommand);
    elseif parametersOperatingSystem.bOsIsWin
        copyfile(strTemplate, strSubjectFolder, 'f');
    end


    %% Replace strings in experiment files

    strPathSubjectData = sprintf('%sATWM1_Localizer_MRI.exp', strSubjectFolder );        

    [f,msg] = fopen(strPathSubjectData,'r','n','UTF-8');
    strSubjectData = fscanf(f,'%c');
    fclose(f);

    strSubjectData = strrep(strSubjectData, 'MySubjectID', strSubjectID);    
  
    fidOutput = fopen(strPathSubjectData, 'w', 'n', 'UTF-8');
    fwrite(fidOutput, strSubjectData, '*char');  % write characters (bytes)
    fclose(fidOutput);
    
    %% Put array data to .sce file
    
    strPathTemplateFile = sprintf('%sATWM1_Localizer_MRI.sce', strSubjectFolder);
    strArrayPlaceholder = '##INSERT_ARRAY##';
    [f,msg] = fopen(strPathTemplateFile,'r','n','UTF-8');
    strCompleteFile = fscanf(f,'%c');
    fclose(f);
    
    viTrialsPerRun = [ 12 ];
    viNumRuns = [ 12 ];
    viWindowSize = [ 4 ];  
    % number of runs must be divisable by 4 so that the position of the target trials can be
    % balanced correctly
        
    iNumFiles = 1;
    
    for iParameterSet = 1:length(viTrialsPerRun)
        
        iTrialsPerRun = viTrialsPerRun(iParameterSet);
        iNumRuns = viNumRuns(iParameterSet);
        iWindowSize = viWindowSize(iParameterSet);

        if iNumFiles == 1
            strPathOutputScePath = sprintf('%s', strSubjectFolder);
        else
            strPathOutputScePath = sprintf('%sV5_ITI_2s_every_%dth_trial_%d_Trials/', strSubjectFolder, iTrialsPerRun, iTrialsPerRun*iNumRuns);
        end
        
        if ~exist(strPathOutputScePath)
            mkdir(strPathOutputScePath);
        end    

        for iFiles = 1:iNumFiles
            strTrialArray = GetTrialArray(iTrialsPerRun, iNumRuns, iWindowSize);
            strNewSimulationFile = strrep(strCompleteFile, strArrayPlaceholder, strTrialArray);    

            if iNumFiles == 1
                strPathOutputSceFile = sprintf('%sATWM1_Localizer_MRI.sce', strPathOutputScePath);
            else
                strPathOutputSceFile = sprintf('%sATWM1_Localiizer_MRI_%04d.sce', strPathOutputScePath, iFiles);                
            end
            fidOutput = fopen(strPathOutputSceFile, 'w', 'n', 'UTF-8');
            fwrite(fidOutput, strNewSimulationFile, '*char');  % write characters (bytes)
            fclose(fidOutput);
        end
    
    end

end

function [ strLines ] = GetTrialArray(iTrialsPerRun, iNumRuns, iWindowSize)

    iFlickerDuration = 133;
    iTrialDuration = 2000;
    iFlickerNum = floor(iTrialDuration / iFlickerDuration);
    %viInterTrialIntervals = [ 20000 24000 28000 ]; % time between runs / blocks
    viInterTrialIntervals = [ 2000 ]; % time between runs / blocks

    dbPercentageTargetTrials = 0.25;

    global iNumPositions;
    iNumPositions = 4;
        
    %%% Parameters for imaginary circle used for position coordinates (see calculateStimulusPositionInArray.m)      
    strCoordinates = '45.96 45.96 -45.96 45.96 -45.96 -45.96 45.96 -45.96;';

    
    % 25% of all trials should be target / test trials, but avoid targets during first trial
    % distribut targets using a fixed window length

   [ viTargetTrialsAllRuns ] = GetTargetTrials(iTrialsPerRun, iNumRuns, dbPercentageTargetTrials, iWindowSize);
 
   
    % now, randomize stimuli positions with the following constraints:
    % - do not allow same stimuli position for subsequent trials, position must change!
    % - balance target positions 
    %   e.g. 3x Pos1 as target, 3x Pos2 as target, etc.)
    
    iNumTargets = length(find(viTargetTrialsAllRuns==1));
    iNumTargetsPerPosition = iNumTargets / iNumPositions;
      
    iNumTrialsPerPosition = iTrialsPerRun * iNumRuns / iNumPositions;    
    viStimuliPositionsPool = [1:iNumPositions];

    while 1        
        [ viStimuliPositions ] = GetStimuliPositions(iNumTrialsPerPosition, viStimuliPositionsPool);
        
        % set non-target trials to zero
        viStimuliTargetPositions = viTargetTrialsAllRuns' .* viStimuliPositions;
        
        % statistics over targets
        for iPos = 1:iNumPositions
            viTargetStats(iPos) = length(find(viStimuliTargetPositions==iPos));
        end
           
        if all(viTargetStats==viTargetStats(1))
            break;
        end
    end
        
     
    strLines = '';
      
    iTrigger = 5;
    iCountTrialIntervals = 0;
    
    viBlockSizes = [ 10:14 10:14 12 ];
    viBlockSizes = viBlockSizes(randperm(length(viBlockSizes)));
    viTrialsWithITI = cumsum(viBlockSizes);
    
    for iTrial = 1:length(viStimuliPositions)

        iTrigger = iTrigger + 1;
        iPosLocalizer = viStimuliPositions(iTrial);
        
        bIsTargetTrial = viTargetTrialsAllRuns(iTrial);
        %if ~isempty (find(viTargetTrials==iTrial))
        %    bIsTargetTrial = true;
        %end
        
        indexTarget = 0;
        
        if bIsTargetTrial
            % set one bitmap as target bitmap -> different color (yellow) than invserse bitmap (green)
            iNumIgnoreFirstFlickers = 3;     
            iNumIgnoreLastFlickers = 3;     
            vbPotentialOddIndices = [(iNumIgnoreFirstFlickers+1):2:(iFlickerNum-iNumIgnoreLastFlickers)];
            vRandValues = randperm(length(vbPotentialOddIndices));           
            indexTarget = vbPotentialOddIndices(vRandValues(1));
        end
        
        [ bitmapArray, invBitmapArray ]  = BuildBitmapArray(iPosLocalizer, false);
        [ bitmapArrayTemp, targetBitmapArray ]  = BuildBitmapArray(iPosLocalizer, true);
        
        if bIsTargetTrial
            strCode = sprintf('%02d_%d_Objects_Pos%d_TargetTrial', iTrial, iNumPositions, iPosLocalizer);
        else
            strCode = sprintf('%02d_%d_Objects_Pos%d_DefaultTrial', iTrial, iNumPositions, iPosLocalizer);
        end
      
        iFlickerDurationMRI = iFlickerDuration - 2;
        iTrialDurationMRI = iTrialDuration - 50;
        
        if ~isempty(find(viTrialsWithITI == iTrial))
            
            %iJitteredInterTrialInterval = viInterTrialIntervals(randperm(length(viInterTrialIntervals),1));
            iCountTrialIntervals = iCountTrialIntervals + 1;
            iJitteredInterTrialInterval = viInterTrialIntervals(mod(iCountTrialIntervals, length(viInterTrialIntervals))+1);            
            
            iJitteredInterTrialIntervalWithCompensation = iJitteredInterTrialInterval - 50;
            strTimingAndBlanks = sprintf('%3d %5d  %d  %d', iTrigger, iJitteredInterTrialIntervalWithCompensation, iFlickerDurationMRI, iTrialDurationMRI);
            %iTrigger = iTrigger + 1;
            iTrigger = iTrigger + (iJitteredInterTrialInterval / iTrialDuration); %will be incremented later
        else
            strTimingAndBlanks = sprintf('%3d %5d  %d  %d', iTrigger, 0, iFlickerDurationMRI, iTrialDurationMRI);
        end

            
        strLines = sprintf('%s\n%s %s \t%s \t%s \t %2i \t "%s"\t"Localizer_%s" \t %s', strLines, ...
                        strTimingAndBlanks, bitmapArray, invBitmapArray, targetBitmapArray, indexTarget, ...
                        strCode, strCode, strCoordinates);

    end
    
end


function [ viStimuliPositions ] = GetStimuliPositions(iNumTrialsPerPosition, viStimuliPositionsPool)

    viStimuliPositions = [];

    for iRun = 1:iNumTrialsPerPosition

        viNewStimuliPositions = viStimuliPositionsPool(randperm(length(viStimuliPositionsPool))); 

        % do not allow same position for successive trials!
        if iRun > 1
            while viStimuliPositions(end) == viNewStimuliPositions(1)
                viNewStimuliPositions = viStimuliPositionsPool(randperm(length(viStimuliPositionsPool)));
            end
        end

        viStimuliPositions = [ viStimuliPositions viNewStimuliPositions ];    
    end
    
end

function [ bitmapArray, invBitmapArray ] = BuildBitmapArray(iPosLocalizer, bIsTargetTrial)

    global iNumPositions;

    strLocBitmap = 'localizer';
    strLocInvBitmap = 'localizer_inv';
    strLocTargetBitmap = 'localizer_target';

    bitmapArray = '';
    invBitmapArray = '';
    
    for iPos = 1:iNumPositions
        
        if iPos == iPosLocalizer
            
            bitmapArray = [bitmapArray ' ' strLocBitmap ];
            
            if bIsTargetTrial
                invBitmapArray = [invBitmapArray ' ' strLocTargetBitmap ];
            else              
                invBitmapArray = [invBitmapArray ' ' strLocInvBitmap ];
            end
        else
            bitmapArray = [bitmapArray ' blank' ];
            invBitmapArray = [invBitmapArray ' blank' ];        
        end
    end

end

