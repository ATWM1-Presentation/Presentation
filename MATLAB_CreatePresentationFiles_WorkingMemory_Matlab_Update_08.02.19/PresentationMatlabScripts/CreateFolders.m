function [strSubjectFolder] = CreateFolders(strRootFolder, strSubjectID, strPermutationType, strLeftRight, strGroup, strExperimentName, strExpDevice)

    %% Create presentation folder for new subject based on template folder
    strTemplateSourceFolder = sprintf('%sPresentationFiles_Templates/', strRootFolder);
    strSubjectFolder = sprintf('%sPresentationFiles_Subjects/%s/', strRootFolder, strGroup);

    strTemplate = sprintf('%sATWM1_%s_%s_MySubjectID/', strTemplateSourceFolder, strExperimentName, strExpDevice);

    strSubjectFolder = sprintf('%sATWM1_%s_%s_MySubjectID/', strSubjectFolder, strExperimentName, strExpDevice);
    strSubjectFolder = strrep(strSubjectFolder,'MySubjectID', strSubjectID);    
    strLogfileFolder = sprintf('%sLogfiles/', strSubjectFolder);
 
    if exist(strSubjectFolder) 
        disp('Warning! One of the destination folders already exists; avoid overwriting existing experiments!');
        return;
    end

    mkdir(strSubjectFolder);

    %% Copy files

    % Differenct behaviour for MacOSX and linux. 
    % For linux, add . after source directory so that only the content of this directory is copied
    strCopyCommand = sprintf('cp -r %s. %s', strTemplate, strSubjectFolder);
    system(strCopyCommand);
    
    if strcmp(strExpDevice,'MRI')
        strDeleteFolderCommand = sprintf('rm -r %s', strLogfileFolder);
        system(strDeleteFolderCommand);
    end

    %% Replace strings in experiment files

    strPathSubjectData = sprintf('%sATWM1_Working_Memory_%s_P1_LR.exp', strSubjectFolder, strExpDevice );        

    [f,msg] = fopen(strPathSubjectData,'r','n','UTF-8');
    strSubjectData = fscanf(f,'%c');
    fclose(f);

    strSubjectData = strrep(strSubjectData, 'MySubjectID', strSubjectID);

    fidOutput = fopen(strPathSubjectData, 'w', 'n', 'UTF-8');
    fwrite(fidOutput, strSubjectData, '*char');  % write characters (bytes)
    fclose(fidOutput);

    % rename .exp file
    [filePath, fileName, fileExt] = fileparts(strPathSubjectData);
    fileName = strrep(fileName, 'LR', strLeftRight);
    fileName = strrep(fileName, 'P1', strPermutationType); 
    strActualPath = sprintf('%s/%s%s', filePath, fileName, fileExt);

    strRenameCommand = sprintf('mv %s %s', strPathSubjectData, strActualPath);
    system(strRenameCommand);

    ConfigExpFile(strActualPath, strExperimentName, strExpDevice, strPermutationType, 1);
    
end