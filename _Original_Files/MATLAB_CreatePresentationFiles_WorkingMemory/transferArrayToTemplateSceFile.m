function transferArrayToTemplateSceFile(strPathTemplateFile, strPathInputData, strPathOutputSceFile, bCreateExtraTrials, strLeftRight)

    % open template_experiment.sce file
    % and replace ##INSERT_ARRAY## with actual array content
    % save it to final experiment.sce file

    strArrayPlaceholder = '##INSERT_ARRAY##';
    strPlaceholderLeftButton = '##LEFT_BUTTON_MEANING##';
    strPlaceholderRightButton = '##RIGHT_BUTTON_MEANING##';
    
    %strCompleteFile = fileread(strPathTemplateFile);     
    [f,msg] = fopen(strPathTemplateFile,'r','n','UTF-8');
    strCompleteFile = fscanf(f,'%c');
    %strCompleteFile = textscan(strCompleteFile,'%[^\n]','delimiter','\n');
    fclose(f);
    
    %strArrayData = fileread(strPathInputData);
    [f,msg] = fopen(strPathInputData,'r','n','UTF-8');
    strArrayData = fscanf(f,'%c');
    %strArrayData = textscan(strArrayData,'%[^\n]','delimiter','\n');
    fclose(f);
    
    strCompleteFile = strrep(strCompleteFile, strArrayPlaceholder, strArrayData);
    
    if bCreateExtraTrials
        if strcmp(strLeftRight,'LR') == true
            strCompleteFile = strrep(strCompleteFile, strPlaceholderLeftButton, 'Keine Veränderung');
            strCompleteFile = strrep(strCompleteFile, strPlaceholderRightButton, 'Veränderung'); 
        else
            disp(strLeftRight);
            strCompleteFile = strrep(strCompleteFile, strPlaceholderLeftButton, 'Veränderung');
            strCompleteFile = strrep(strCompleteFile, strPlaceholderRightButton, 'Keine Veränderung');            
        end
    end
    
    fidOutput = fopen(strPathOutputSceFile, 'w', 'n', 'UTF-8');
    fwrite(fidOutput, strCompleteFile, '*char');  % write characters (bytes)
    fclose(fidOutput);
    
    delete(strPathInputData);

end

function tline = getFirstTextLine(filepath)

    fid = fopen(filepath, 'r', 'n', 'UTF-8');
    tline = fgetl(fid);
end



