function ConfigExpFile(strFilePath, strExpName, strExpDevice, strPermutationType, iSession)

    % configuration of Presentation experiment files is not fully automated
    % This function requires pre-configured .exp files that have a suitable
    % scene file structure

    strSceFileInstruction = '##SCE_FILE_COND_C_INSTRUCTION##';
    strSceFileRun         = '##SCE_FILE_COND_C_RUN_R##';
    strExpFileName        = '##EXP_FILE_NAME##';

    switch strExpDevice
        case 'MRI'
            iRun = 1;
        case 'MEG'   
            iRun = iSession;
        case 'PSY';
            iRun = 1;
    end       
    
    vsConditions = { 'Salient_Cued', 'Nonsalient_Cued', 'Salient_Uncued', 'Nonsalient_Uncued' };        
    
    switch strPermutationType
        case 'P1' % former Version V
            viNewPermutation = [ 1 2 3 4 ];
        case 'P2'   
            viNewPermutation = [ 1 4 3 2 ];
        case 'P3';
            viNewPermutation = [ 4 3 2 1 ];
        case 'P4';
            viNewPermutation = [ 3 2 1 4 ];
        case 'P5';  % former Version I
            viNewPermutation = [ 2 3 4 1 ];
        case 'P6';
            viNewPermutation = [ 4 1 2 3 ];
        case 'P7';
            viNewPermutation = [ 4 2 1 3 ];
        case 'P8';
            viNewPermutation = [ 3 1 2 4 ];
    end     
    
    [f,msg] = fopen(strFilePath,'r','n','UTF-8');
    strFileContent = fscanf(f,'%c');
    fclose(f);    
    
    for iCond = 1:4
        strThisSceFileInstruction = strrep( strSceFileInstruction, 'COND_C_', sprintf('COND_%d_', iCond) );
        strThisSceFileRun = strrep( strSceFileRun, 'COND_C_', sprintf('COND_%d_', iCond) );
        strThisSceFileRun = strrep( strThisSceFileRun, 'RUN_R', sprintf('RUN_%d', iRun) );
        
        % .sce file name, e.g.: 'ATWM1_Working_Memory_MEG_Nonsalient_Cued_Run1' 
        % extension .sce is included in the exp template file
        strNameSceFile = sprintf( 'ATWM1_%s_%s_%s', strExpName, strExpDevice, vsConditions{viNewPermutation(iCond)} );
    
        strInstructionFileName = sprintf('%s_Instruction', strNameSceFile);
        strRunFileName = sprintf('%s_Run%d', strNameSceFile, iRun);
        
        strFileContent = strrep(strFileContent, strThisSceFileInstruction, strInstructionFileName);
        strFileContent = strrep(strFileContent, strThisSceFileRun, strRunFileName);
        
        % replace exp file name text field in Presentation, e.g.
        % 'ATWM1_Working_Memory_MEG_P1_LR_Session1'
        [strPath, strFileName, stExt] = fileparts(strFilePath);
        strFileContent = strrep(strFileContent, strExpFileName, strFileName);
        
    end
    
	fidOutput = fopen(strFilePath, 'w', 'n', 'UTF-8');
    fwrite(fidOutput, strFileContent, '*char');  % write characters (bytes)
    fclose(fidOutput);
    
end