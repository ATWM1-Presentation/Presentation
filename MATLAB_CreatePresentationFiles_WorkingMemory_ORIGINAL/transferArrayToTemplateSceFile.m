function transferArrayToTemplateSceFile(strScriptFolderWM, strPathTemplateFile, strPathInputData, strPathOutputSceFile, bCreateExtraTrials, strLeftRight)

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
    
    % Cannon save Umlaute in this MATLAB file, therefore read it from an
    % UTF-8 file.
    % Background: MacOSX problem with mixed OS-wide language and region settings (e.g. language US,
    % date format German) 
    % --> MATLAB switches to defaut locale 'en_US_POSIX.US-ASCII' 
    % since the mixed locale cannot be recognized (check with command
    % feature('locale') ). But this default en_US_POSIX.US-ASCII cannot be
    % switched to UTF-8, at least I did not succeed in modifying
    % /Applications/MATLAB_R2016a.app/bin/lcdata.xml accordingly
    % Compare http://bastibe.de/2015-04-15-unicode-in-the-matlab-command-line.html
    % and http://de.mathworks.com/matlabcentral/answers/12422-macosx-encoding-problem
        
    strPathUmlautWord = sprintf('%s/UmlautWordVeraenderung.txt', strScriptFolderWM );
    [f,msg] = fopen(strPathUmlautWord,'r','n','UTF-8');
    strVeraenderung = fscanf(f,'%c');
    fclose(f);
    
    strNoVeraenderung = sprintf('Keine %s', strVeraenderung);
    
    if bCreateExtraTrials
        if strcmp(strLeftRight,'LR') == true
            strCompleteFile = strrep(strCompleteFile, strPlaceholderLeftButton, strNoVeraenderung);
            strCompleteFile = strrep(strCompleteFile, strPlaceholderRightButton, strVeraenderung); 
        else
            disp(strLeftRight);
            strCompleteFile = strrep(strCompleteFile, strPlaceholderLeftButton, strVeraenderung);
            strCompleteFile = strrep(strCompleteFile, strPlaceholderRightButton, strNoVeraenderung);            
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



