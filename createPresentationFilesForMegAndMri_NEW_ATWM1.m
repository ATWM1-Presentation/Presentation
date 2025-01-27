function createPresentationFilesForMegAndMriATWM1()
%%% Requires the Statistics and Machine Learning Toolbox

clear all
clc

global strStudy

strStudy = 'ATWM1';

bTestMode = true;
%bTestMode = false;

%%% Define operating system
%%% win, lin, mac
parametersOperatingSystem.bOsIsWin = true;
parametersOperatingSystem.bOsIsLin = false;


%% Define folder and add temporary paths
% Original folders on beoserv
%%{
strRootFolderBeoserv = sprintf('/data/projects/%s/', strStudy);
strRootFolderServer = strRootFolderBeoserv;
strRootFolder = sprintf('%sPresentation/', strRootFolderServer);
%}

%% Define folder and add temporary paths
strRootFolderBeoserv = 'D:/Daten/ATWM1/'; %sprintf('/data/projects/%s/', strStudy);
strRootFolderServer = strRootFolderBeoserv;
strRootFolder = sprintf('%sPresentation_7T/', strRootFolderServer);

strScriptFolderWM               = sprintf('%sMATLAB_CreatePresentationFiles_WorkingMemory/', strRootFolder);
strGlobalStudyParametersFolder  = sprintf('%sStudy_Parameters/', strRootFolderServer);
strLocalStudyParametersFolder	= sprintf('%sStudy_Parameters/', strRootFolder);
strScriptFolderLocalizer        = sprintf('%sPresentation/MATLAB_CreatePresentationFiles_Localizer/', strRootFolderServer);

addpath(strScriptFolderWM);
addpath(strLocalStudyParametersFolder);
addpath(strScriptFolderLocalizer);

bAbort = copyStudyParameterFilesToLocalStudyParametersFolderATWM1(strStudy, strGlobalStudyParametersFolder, strLocalStudyParametersFolder);
if bAbort == true
    return
end

%% Load parameters
aSubject            = aSubjectATWM1_IMAGING;
parametersGroups    = parametersGroupsATWM1;
parametersParadigm  = parametersParadigm_WM_IMAGING_ATWM1;
parametersStudy     = parametersStudyATWM1;

%% Select/prepare parameters and folder
if ~bTestMode
    [strGroup, strSubjectID, strPermutationType, strLeftRight, bAbort] = selectParametersForPresentationScenarioFileCreationATWM1(parametersGroups, aSubject, parametersParadigm);
    if bAbort
        return
    end
else
    rmdir('D:\Daten\ATWM1\Presentation_7T\PresentationFiles_Subjects\CONT\', 's')
    strGroup = 'CONT';
    strSubjectID = '__SUBJECT_TEST_CONT';
    strPermutationType = 'P7';
    strLeftRight = 'RL';
end

%strGroup, strSubjectID, strPermutationType, strLeftRight, bAbort

[strGroupPresentationFilesFolder, strSubjectPresentationFilesFolder, bAbort] = prepareSubjectFolderForPresentationScenarioFilesATMW1(strRootFolder, strGroup, strSubjectID, bTestMode);
if bAbort == true
    return
end
%% Create presentation files for MEG and MRI version of the working memory experiment
aStrSubjectPresentationFileSubFolder = {};
for ced = 1:numel(parametersStudy.aStrExpDevice)
    strExpDevice = parametersStudy.aStrExpDevice{ced};
    aStrFilePath = CreatePresentationFiles(parametersOperatingSystem, strExpDevice, strSubjectID, strPermutationType, strLeftRight, strGroup, strRootFolder, strScriptFolderWM);
    for cp = 1:numel(aStrFilePath)
        iSubFolder = numel(aStrSubjectPresentationFileSubFolder) + 1;
        aStrSubjectPresentationFileSubFolder{iSubFolder} = aStrFilePath{cp};
    end
end

%% Create presentation files for localizer
strSubjectFolder = CreateSceFilesLocalizer(parametersOperatingSystem, strSubjectID, strGroup, strRootFolder);
iSubFolder = numel(aStrSubjectPresentationFileSubFolder) + 1;
aStrSubjectPresentationFileSubFolder{iSubFolder} = strSubjectFolder;

%% Move and zip presentation files
movePresentationScenarioFilesToSubjectFolderATWM1(aStrSubjectPresentationFileSubFolder, strSubjectPresentationFilesFolder);
zipSubjectPresentationScenarioFileFolderATWM1(strSubjectID, strStudy, strGroupPresentationFilesFolder, strSubjectPresentationFilesFolder);

%% Push new files to study github account
pushSubjectPresentationScenarioFilesToGithubATWM1;


end


function bAbort = copyStudyParameterFilesToLocalStudyParametersFolderATWM1(strStudy, strGlobalStudyParametersFolder, strLocalStudyParametersFolder)
% Copy parameter files from global study parameters folder to local study parameters folder
aStrStudyParametersFiles = {
    sprintf('aSubject%s_IMAGING.m', strStudy)
    sprintf('parametersGroups%s.m', strStudy)
    sprintf('parametersParadigm_WM_IMAGING_%s.m', strStudy)
    sprintf('parametersStudy%s.m', strStudy)
    sprintf('parametersDialog%s.m', strStudy)
    };

for cf = 1:numel(aStrStudyParametersFiles)
    strParameterFile = aStrStudyParametersFiles{cf};
    pathFileGlobalStudyParametersFolder = fullfile(strGlobalStudyParametersFolder, strParameterFile);
    pathFileLocalStudyParametersFolder  = fullfile(strLocalStudyParametersFolder, strParameterFile);
    if exist(pathFileGlobalStudyParametersFolder, 'file')
        try
            copyfile(pathFileGlobalStudyParametersFolder, pathFileLocalStudyParametersFolder, 'f');
        catch ME
            if (isempty (strfind (ME.message, 'Operation not permitted')))
                bAbort = true;
                rethrow (ME) ;
            end
        end
    end
end
bAbort = false;

end


function [strGroup, strSubjectID, strPermutationType, strLeftRight, bAbort] = selectParametersForPresentationScenarioFileCreationATWM1(parametersGroups, aSubject, parametersParadigm)

global strStudy

strDialogSelectionMode = 'single';

bParametersCorrect = false;

while ~bParametersCorrect
    
    %% Select group
    strPrompt = 'Please select the group';
    strTitle = 'Group selection';
    vListSize = [300, 100];
    
    [iGroup] = listdlg('ListString', parametersGroups.aStrShortGroups, 'PromptString', strPrompt, 'Name', strTitle, 'ListSize', vListSize, 'SelectionMode', strDialogSelectionMode);
    if isempty(iGroup)
        error(sprintf('\n\nNo group selected!\n'));
    end
    strGroup = parametersGroups.aStrShortGroups{iGroup};
    
    %% Add dummy subject name for testing purposes
    strDummySubject = sprintf('__SUBJECT_TEST_%s', strGroup);
    aSubject.ATWM1_IMAGING.Groups.(genvarname(strGroup)) = [aSubject.ATWM1_IMAGING.Groups.(genvarname(strGroup))
        strDummySubject];
    if isempty(aSubject.ATWM1_IMAGING.Groups.(genvarname(strGroup)))
        error('\n\nNo subject entries found for group %s!\n', upper(parametersGroups.aStrLongGroups{iGroup}));
    end
    
    %% Select subject
    strPrompt = 'Please select the subject code';
    strTitle = 'Subject code';
    vListSize = [300, 600];
    aStrSubjectsGroup = aSubject.ATWM1_IMAGING.Groups.(genvarname(strGroup));
    [iSubject] = listdlg('ListString', aStrSubjectsGroup, 'PromptString', strPrompt, 'Name', strTitle, 'ListSize', vListSize, 'SelectionMode', strDialogSelectionMode);
    if isempty(iSubject)
        error('\n\nNo subject selected!\n');
    end
    strSubjectID = aSubject.ATWM1_IMAGING.Groups.(genvarname(strGroup)){iSubject};
  
    %% Select permutation
    strPrompt = 'Please select the permutation order';
    strTitle = 'Permutation order';
    vListSize = [300, 150];
    for cp = 1:parametersParadigm.nrOfPermutations
        parametersParadigm.aStrPermutations{cp}  = sprintf('P%i', cp);
    end
    [iPermutation] = listdlg('ListString', parametersParadigm.aStrPermutations, 'PromptString', strPrompt, 'Name', strTitle, 'ListSize', vListSize, 'SelectionMode', strDialogSelectionMode);
    if isempty(iPermutation)
        error('\n\nNo permutation selected!\n');
    end
    strPermutationType = parametersParadigm.aStrPermutations{iPermutation};
    
    %% Select response button configuration (left/right or right/left)
    strPrompt = 'Please select the response button configuration for the subject';
    strTitle = 'Response button configuration';
    vListSize = [300, 100];
    [iResponseButtonConfiguration ] = listdlg('ListString', parametersParadigm.aStrResponseButtonConfiguration, 'PromptString', strPrompt, 'Name', strTitle, 'ListSize', vListSize, 'SelectionMode', strDialogSelectionMode);
    if isempty(iResponseButtonConfiguration)
        error('\n\nNo response button configuration selected!\n');
    end
    strLeftRight = parametersParadigm.aStrResponseButtonConfiguration{iResponseButtonConfiguration};
 
    %% Verify
    [bParametersCorrect, bAbort] = verifyParametersForPresentationScenarioFileCreationATWM1(strGroup, strSubjectID, strPermutationType, strLeftRight);
    if bAbort
        sprintf('Parameter selection aborted by user!\n');
        break
    end
end

end


function [bParametersCorrect, bAbort] = verifyParametersForPresentationScenarioFileCreationATWM1(strGroup, strSubjectID, strPermutationType, strLeftRight)

global strStudy

bAbort = false;

%%% Load text and dialog elements
[parametersDialog] = eval(['parametersDialog', strStudy]);

%%% Display subject information and subject code for final check
strTitle = 'Verify parameters for Presentation scenario file creation';

strParametersPresFileCreation1 = sprintf('%s%s%s\n\n', parametersDialog.strGroup, parametersDialog.strEmpty, strGroup);
strParametersPresFileCreation2 = sprintf('%s%s%s\n\n', parametersDialog.strSubjectID, parametersDialog.strEmpty, strSubjectID);
strParametersPresFileCreation3 = sprintf('%s%s%s\n\n', parametersDialog.strConditionPermutation, parametersDialog.strEmpty, strPermutationType);
strParametersPresFileCreation4 = sprintf('%s%s%s\n\n', parametersDialog.strResponseKeyConfig, parametersDialog.strEmpty, strLeftRight);

strParametersPresFileCreation = [strParametersPresFileCreation1, strParametersPresFileCreation2, strParametersPresFileCreation3, strParametersPresFileCreation4];

strButton1 = sprintf('%sCorrect%s', parametersDialog.strEmpty, parametersDialog.strEmpty);
strButton2 = sprintf('%sIncorrect%s', parametersDialog.strEmpty, parametersDialog.strEmpty);
strButton3 = sprintf('%sAbort%s', parametersDialog.strEmpty, parametersDialog.strEmpty);
default = strButton3;
choice = questdlg(strParametersPresFileCreation, strTitle, strButton1, strButton2, strButton3, default);
if isempty(choice)
    fprintf('Subject information not verified!\nAborting function.\n');
    return
end

switch choice
    case strButton1
        bParametersCorrect = true;
        %%% Print verified parameters
        fprintf(strParametersPresFileCreation1);
        fprintf(strParametersPresFileCreation2);
        fprintf(strParametersPresFileCreation3);
        fprintf(strParametersPresFileCreation4);
    case strButton2
        bParametersCorrect = false;
    case strButton3
        fprintf('Parameters for Presentation scenario file creation not verified!\nAborting function.\n');
        bParametersCorrect = false;
        bAbort = true;
        return
end


end


function [strGroupPresentationFilesFolder, strSubjectPresentationFilesFolder, bAbort] = prepareSubjectFolderForPresentationScenarioFilesATMW1(strRootFolder, strGroup, strSubjectID, bTestMode)
bAbort = false;
strPresentationFilesFolder = strcat(strRootFolder, 'PresentationFiles_Subjects', '/');
strGroupPresentationFilesFolder = strcat(strPresentationFilesFolder,  strGroup, '/');
strSubjectPresentationFilesFolder = strcat(strGroupPresentationFilesFolder, strSubjectID, '/');

if ~bTestMode
    %%% Check, whether Presentation scenario files have already been created
    if exist(strSubjectPresentationFilesFolder, 'dir')
        strTitle    =  'Overwrite existing files?';
        strQuestion = sprintf('One or more files already exist for subject %s', strSubjectID);
        strChoice1  = 'Overwrite';
        strChoice2  = 'Cancel';
        choice = questdlg(strQuestion, strTitle, strChoice1, strChoice2, strChoice1);
        if ~isempty(choice)
            switch choice
                case strChoice1
                    try
                        rmdir(strSubjectPresentationFilesFolder, 's');
                    catch
                        error('Could not delete folder %s\n', strSubjectPresentationFilesFolder);
                    end
                    strMessage = sprintf('Overwriting Presentation scencario files for subject %s.\n', strSubjectID);
                    fprintf(strMessage);
                case strChoice2
                    bAbort = true;
                    return
            end
        else
            bAbort = true;
        end
    end
else
    %{
    %%% Test Mode
    try
        %rmdir(strSubjectPresentationFilesFolder, 's');
    catch
        error('Could not delete folder %s\n', strSubjectPresentationFilesFolder);
    end
    %}
end

if ~bAbort
    %%% Create subject folder for Presentation scenario files
    mkdir(strSubjectPresentationFilesFolder);
else
    strMessage = sprintf('Presentation scencario files for subject %s not overwritten!\nAborting function!\n\n', strSubjectID);
    fprintf(strMessage);
end


end


function movePresentationScenarioFilesToSubjectFolderATWM1(aStrSubjectPresentationFileSubFolder, strSubjectPresentationFilesFolder);
% Move all subfolder to subject presentation file folder
for cp = 1:numel(aStrSubjectPresentationFileSubFolder)
    strFilePath = aStrSubjectPresentationFileSubFolder{cp};
    
    iDirSep = strfind(strFilePath, '/');
    iStart = iDirSep(end-1) + 1;
    iEnd = iDirSep(end) - 1;
    strSubFolder = strFilePath(iStart:iEnd);
    
    strNewFolder = strcat(strSubjectPresentationFilesFolder, strSubFolder, '/');
    movefile(strFilePath, strNewFolder)
end

end


function zipSubjectPresentationScenarioFileFolderATWM1(strSubjectID, strStudy, strGroupPresentationFilesFolder, strSubjectPresentationFilesFolder);
% Zip subject presentation file folder
strZipFile = sprintf('%s_%s_Presentation_Scenario_Files.zip', strSubjectID, strStudy);
pathZipFile = fullfile(strGroupPresentationFilesFolder, strZipFile);
zip(pathZipFile, strSubjectPresentationFilesFolder);

end


