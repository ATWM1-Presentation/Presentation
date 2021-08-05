function countParadigmConfigFrequencyServerBased_WM_ATWM1()

clear all
clc

global iStudy
global strGroup
global strSubject

iStudy = 'ATWM1';

%%% Define folder and add temporary paths
strRootFolderBeoserv = sprintf('/data/projects/%s/', iStudy);
strRootFolderServer = strRootFolderBeoserv;
strRootFolder = sprintf('%sPresentation/', strRootFolderServer);

strScriptFolderWM               = sprintf('%sMATLAB_CreatePresentationFiles_WorkingMemory/', strRootFolder);
strGlobalStudyParametersFolder  = sprintf('%sStudy_Parameters/', strRootFolderServer);
strLocalStudyParametersFolder	= sprintf('%sStudy_Parameters/', strRootFolder);
strScriptFolderLocalizer        = sprintf('%sPresentation/MATLAB_CreatePresentationFiles_Localizer/', strRootFolderServer);

folderDefinition.presentationScenarioFilesServer = sprintf('%sPresentation/PresentationFiles_Subjects/', strRootFolderServer);

addpath(strScriptFolderWM);
addpath(strLocalStudyParametersFolder);
addpath(strScriptFolderLocalizer);

%%% REINSTATE
%{
bAbort = copyStudyParameterFilesToLocalStudyParametersFolderATWM1(iStudy, strGlobalStudyParametersFolder, strLocalStudyParametersFolder);
if bAbort == true
    return
end
%}

%%% Load parameters
%folderDefinition            = eval(['folderDefinition', iStudy]);
parametersStudy             = eval(['parametersStudy', iStudy]);
parametersGroups            = eval(['parametersGroups', iStudy]);



parametersParadigm_WM_IMAGING = eval(['parametersParadigm_WM_IMAGING_', iStudy]);

%{
%%% Check, whether all relevant local and server folders can be accessed
hFunction = str2func(sprintf('checkLocalComputerFolderAccess%s', iStudy));
bAllFoldersCanBeAccessed = feval(hFunction, folderDefinition);
if bAllFoldersCanBeAccessed == false
    error('Folders for study %s cannot be accessed.', iStudy);
end
%}

%%% Load additional folder definitions
%hFunction = str2func(sprintf('addServerFolderDefinitions%s', iStudy));
%folderDefinition = feval(hFunction, folderDefinition);

%%% Add information about folder location on server
%folderDefinition.presentationScenarioFilesServer = folderDefinition.presentationScenarioFilesServer


%aSubject = processSubjectArrayServerBasedATWM1_IMAGING;
aSubject = processSubjectArrayServerBasedATWM1_IMAGING(parametersStudy, parametersGroups);

%%% Special cases of (invalid) subjects 
aStrInvalidSubjects = {
                        'FC30HVJ'
                        };
%%% Special cases of (invalid) subjects 


for cg = 1:parametersGroups.nGroups
    strGroup = parametersGroups.aStrShortGroups{cg};
    
    aStrSubjectsGroup = aSubject.ATWM1_IMAGING.Groups.(genvarname(strGroup));
    %test = aSubject.ATWM1_IMAGING.nSubjects
    nSubjects = aSubject.ATWM1_IMAGING.nSubjects.(genvarname(strGroup));
    if nSubjects > 0
        aStrParadigmConfig = [];
        aStrMissingSubjectFolders = [];
        nrOfUsesConfig = [];
        aStrNrOfUsesConfig = [];
        for cs = 1:nSubjects
            strSubject = aStrSubjectsGroup{cs};
            %%% Add check for server or local
            % strFolderSubject = sprintf('%s%s\\%s\\ATWM1_Working_Memory_MEG_%s_Session1\\', folderDefinition.presentationScenarioFilesServer, strGroup, strSubject, strSubject);
            
            strFolderSubject = sprintf('%s%s/%s/ATWM1_Working_Memory_MEG_%s_Session1/', folderDefinition.presentationScenarioFilesServer, strGroup, strSubject, strSubject);
            if exist(strFolderSubject, 'dir')
                strSearchPath = fullfile(strFolderSubject, '*.exp');
                strFile = dir(strSearchPath);
                strFile = strFile.name;
                strPermutation = strFile(end-17:end-13);
                aStrParadigmConfig{cs} = strPermutation;
            elseif ~ismember(strSubject, aStrInvalidSubjects)
                aStrMissingSubjectFolders{cs} = strSubject;
            end
        end
        %%% Count number of missing subject folders
        if ~isempty(aStrMissingSubjectFolders)
            aStrMissingSubjectFolders = aStrMissingSubjectFolders(~cellfun(@isempty, aStrMissingSubjectFolders));
            nMissingSubjectFolders = numel(aStrMissingSubjectFolders);
        else
            nMissingSubjectFolders = 0;
        end
        
        %%% Determine number of used configurations 
        aStrParadigmConfig          = (aStrParadigmConfig(~cellfun('isempty', aStrParadigmConfig)));
        aStrUsedParadigmConfig      = unique(aStrParadigmConfig);
        
        %%% Remove nonstandard configurations
        aStrStandardParadigmConfig  = parametersParadigm_WM_IMAGING.aStrParadigmConfig;
        aStrUsedParadigmConfig      = aStrUsedParadigmConfig(ismember(aStrUsedParadigmConfig, aStrStandardParadigmConfig));
        
        %%% Count number of used configurations 
        for cconf = 1:parametersParadigm_WM_IMAGING.nParadigmConfigs
            strConfig = aStrStandardParadigmConfig{cconf};
            
            %%% Add server check
            % nrOfUsesConfig(cconf) = sum(contains(aStrParadigmConfig, strConfig));
            
            nrOfUsesConfig(cconf) = find(aStrParadigmConfig, strConfig)
            aStrNrOfUsesConfig{cconf} = sprintf('%s:\t%i', strConfig, nrOfUsesConfig(cconf));
        end
        
        [a_sorted, a_order] = sort(nrOfUsesConfig);
        aStrNrOfUsesConfig  = (aStrNrOfUsesConfig(a_order))';
        
        fprintf('\nNumber of used presentation configurations for %s:\n\n', strGroup);
        %%% Display number of used configurations
        for cconf = 1:parametersParadigm_WM_IMAGING.nParadigmConfigs
            fprintf('\t%s\n', aStrNrOfUsesConfig{cconf});
            
        end
        fprintf('\n\n');
        
        if nMissingSubjectFolders > 0
            %%% Display subject codes with missing presentation files
            fprintf('\nMissing subject folders for %s:\n\n', strGroup);
            for cmsf = 1:nMissingSubjectFolders
                fprintf('\t%s\n', aStrMissingSubjectFolders{cmsf});
            end
            fprintf('\n\n');
        else
            aStrMissingSubjectFolders = fprintf('\nNo missing subject folders for %s\n\n', strGroup);
        end
    else
        fprintf('\nNo subjects in group %s\n\n', strGroup);
    end
end

%%% Remove temporary paths
rmpath(strScriptFolderWM);
rmpath(strLocalStudyParametersFolder);
rmpath(strScriptFolderLocalizer);


end


function bAbort = copyStudyParameterFilesToLocalStudyParametersFolderATWM1(iStudy, strGlobalStudyParametersFolder, strLocalStudyParametersFolder)
% Copy parameter files from global study parameters folder to local study parameters folder
aiStudyParametersFiles = {
    sprintf('aSubject%s_IMAGING.m', iStudy)
    sprintf('parametersGroups%s.m', iStudy)
    sprintf('parametersParadigm_WM_IMAGING_%s.m', iStudy)
    sprintf('parametersStudy%s.m', iStudy)
    sprintf('parametersDialog%s.m', iStudy)
    };

for cf = 1:numel(aiStudyParametersFiles)
    strParameterFile = aiStudyParametersFiles{cf};
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


function aSubject = processSubjectArrayServerBasedATWM1_IMAGING(parametersStudy, parametersGroups)

global iStudy

%parametersStudy         = eval(['parametersStudy', iStudy]);
%parametersGroups        = eval(['parametersGroups', iStudy]);

hFunction = str2func(sprintf('aSubject%s_%s', iStudy, parametersStudy.strImaging));
aSubject = feval(hFunction);

%%% Check whether subject labels match the predefined labels
aStrShortGroups = parametersGroups.aStrShortGroups;

%%% add check for matlab version
% aStrGroupFieldnames = fieldnames(aSubject.(matlab.lang.makeValidName(strcat(iStudy, '_', parametersStudy.strImaging))).Groups);


aStrGroupFieldnames = fieldnames(aSubject.(genvarname(strcat(iStudy, '_', parametersStudy.strImaging))).Groups);



if ~isempty(setxor(aStrGroupFieldnames, aStrShortGroups))   
    error('Groups labels in %s.m do not match the labels specified in %s.m!', mfilename, strParmetersGroupFile)
end

%%% Write all subject IDs of all groups in a single array
aStrAllSubjectNames = {};
for cfn = 1:numel(aStrGroupFieldnames)
    %%% add check for matlab version
    % aStrSubjectNameGroup{cfn} = aSubject.(matlab.lang.makeValidName(strcat(iStudy, '_', parametersStudy.strImaging))).(matlab.lang.makeValidName(parametersGroups.strGroups)).(matlab.lang.makeValidName(aStrGroupFieldnames{cfn}));
    
    aStrSubjectNameGroup{cfn} = aSubject.(genvarname(strcat(iStudy, '_', parametersStudy.strImaging))).(genvarname(parametersGroups.strGroups)).(genvarname(aStrGroupFieldnames{cfn}));
    
    aStrAllSubjectNames = [aStrAllSubjectNames, aStrSubjectNameGroup{cfn}'];
end
%%% add check for matlab version
% aSubject.(matlab.lang.makeValidName(strcat(iStudy, '_', parametersStudy.strImaging))).(matlab.lang.makeValidName(parametersGroups.strGroups)).ALL = sort(aStrAllSubjectNames);
aSubject.(genvarname(strcat(iStudy, '_', parametersStudy.strImaging))).(genvarname(parametersGroups.strGroups)).ALL = sort(aStrAllSubjectNames);

%%% Check, whether all subject IDs are unique

%%% add check for matlab version
% aStrUniqueSubjects = unique(aSubject.(matlab.lang.makeValidName(strcat(iStudy, '_', parametersStudy.strImaging))).(matlab.lang.makeValidName(parametersGroups.strGroups)).ALL);

aStrUniqueSubjects = unique(aSubject.(genvarname(strcat(iStudy, '_', parametersStudy.strImaging))).(genvarname(parametersGroups.strGroups)).ALL);


%%% add check for matlab version
% if numel(aSubject.(matlab.lang.makeValidName(strcat(iStudy, '_', parametersStudy.strImaging))).(matlab.lang.makeValidName(parametersGroups.strGroups)).ALL) ~= numel(aStrUniqueSubjects)

if numel(aSubject.(genvarname(strcat(iStudy, '_', parametersStudy.strImaging))).(genvarname(parametersGroups.strGroups)).ALL) ~= numel(aStrUniqueSubjects)
    for cs = 1:numel(aStrUniqueSubjects)
        strSubject = aStrUniqueSubjects{cs};
        %%% add check for matlab version
        % if sum(strcmp(strSubject, aSubject.(matlab.lang.makeValidName(strcat(iStudy, '_', parametersStudy.strImaging))).(matlab.lang.makeValidName(parametersGroups.strGroups)).ALL)) ~= 1
        if sum(strcmp(strSubject, aSubject.(genvarname(strcat(iStudy, '_', parametersStudy.strImaging))).(genvarname(parametersGroups.strGroups)).ALL)) ~= 1
            fprintf('Duplicate entry for subject ID %s detected.\n\n', strSubject);
        end
    end
    error('Duplicate entries detected!')
end

%%% Determine number of subjects in each group and for all groups combined
for cfn = 1:numel(aStrGroupFieldnames)
    %%% add check for matlab version
    % aSubject.(matlab.lang.makeValidName(strcat(iStudy, '_', parametersStudy.strImaging))).nSubjects.(matlab.lang.makeValidName(aStrGroupFieldnames{cfn})) = numel(aStrSubjectNameGroup{cfn});
    aSubject.(genvarname(strcat(iStudy, '_', parametersStudy.strImaging))).nSubjects.(genvarname(aStrGroupFieldnames{cfn})) = numel(aStrSubjectNameGroup{cfn});
end
%%% add check for matlab version
% aSubject.(matlab.lang.makeValidName(strcat(iStudy, '_', parametersStudy.strImaging))).nSubjects.ALL = numel(aStrAllSubjectNames);
aSubject.(genvarname(strcat(iStudy, '_', parametersStudy.strImaging))).nSubjects.ALL = numel(aStrAllSubjectNames);

%{
%%% Write all subject IDs of all groups in a single array and add group ID
for cfn = 1:numel(aStrGroupFieldnames)
    nSubjects = aSubject.(matlab.lang.makeValidName(strcat(iStudy, '_', parametersStudy.strImaging))).nSubjects.(matlab.lang.makeValidName(aStrGroupFieldnames{cfn}));
    for cs = 1:nSubjects
        aStrAllSubjectGroupNames{cs} = aStrGroupFieldnames{cfn}
    end
end


%aSubject.(matlab.lang.makeValidName(strcat(iStudy, '_', parametersStudy.strImaging))).(matlab.lang.makeValidName(parametersGroups.strGroups)).ALL = sort(aStrAllSubjectNames);
%}

end