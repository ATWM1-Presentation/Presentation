function [strSubjectFolderSession1, strSubjectFolderSession2] = CreateFoldersMEG(strRootFolder, strSubjectID, strPermutationType, strLeftRight, strGroup, strExperimentName, strExpDevice, viSessionNumbers)

    %% Create presentation folder for new subject based on template folder
    strTemplateSourceFolder = sprintf('%sPresentationFiles_Templates/', strRootFolder);
    strSubjectFolder = sprintf('%sPresentationFiles_Subjects/%s/', strRootFolder, strGroup);

    strTemplateSession1 = sprintf('%sATWM1_%s_%s_MySubjectID_Session1/', strTemplateSourceFolder, strExperimentName, strExpDevice);
    strTemplateSession2 = sprintf('%sATWM1_%s_%s_MySubjectID_Session2/', strTemplateSourceFolder, strExperimentName, strExpDevice);

    strSubjectFolderSession1 = sprintf('%sATWM1_%s_%s_MySubjectID_Session1/', strSubjectFolder, strExperimentName, strExpDevice);
    strSubjectFolderSession2 = sprintf('%sATWM1_%s_%s_MySubjectID_Session2/', strSubjectFolder, strExperimentName, strExpDevice);

    strSubjectFolderSession1 = strrep(strSubjectFolderSession1,'MySubjectID', strSubjectID);
    strSubjectFolderSession2 = strrep(strSubjectFolderSession2,'MySubjectID', strSubjectID);

    %if exist(strSubjectFolderSession1) || exist(strSubjectFolderSession2)
    %    disp('Warning! One of the destination folders already exists; avoid overwriting existing experiments!');
    %    return;
    %end

    mkdir(strSubjectFolderSession1);
    mkdir(strSubjectFolderSession2);

    %% Copy files

    % Differenct behaviour for MacOSX and linux. 
    % For linux, add . after source directory so that only the content of this directory is copied
    strCopyCommand = sprintf('cp -r %s. %s', strTemplateSession1, strSubjectFolderSession1);
    system(strCopyCommand);
    strCopyCommand = sprintf('cp -r %s. %s', strTemplateSession2, strSubjectFolderSession2);
    system(strCopyCommand);

    %% Replace strings in experiment files

    for iSession = viSessionNumbers

        strSession = sprintf('Session%d', iSession);
        strPathExpFileSession = sprintf('%sATWM1_Working_Memory_MEG_P1_LR_Session1.exp', strSubjectFolderSession1 );        
        strPathSubjectData = strrep(strPathExpFileSession, 'Session1', strSession);         

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
        
        ConfigExpFile(strActualPath, strExperimentName, strExpDevice, strPermutationType, iSession);
        
    end

end