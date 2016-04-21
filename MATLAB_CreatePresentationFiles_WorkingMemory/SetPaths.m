function [ strProjectRootDir, strFieldTripDir ] = SetPaths()
    
    ENVIRONMENT_MEG_LFS1 = 0;
	ENVIRONMENT_LOCAL_MACHINE_MACBOOKPRO13 = 1;
    ENVIRONMENT_LOCAL_MACHINE_IMAC27 = 2;
    
    if exist('/data/projects/ATWM1/Presentation/', 'dir')
        iDetectedEnvironment = ENVIRONMENT_MEG_LFS1;
    elseif exist('/Users/mmb/MEG/ATWM1/Presentation/', 'dir')
        iDetectedEnvironment = ENVIRONMENT_LOCAL_MACHINE_MACBOOKPRO13;
    elseif exist('/Users/mis0/MEG/ATWM1/Presentation/', 'dir')
        iDetectedEnvironment = ENVIRONMENT_LOCAL_MACHINE_IMAC27;
    else
        disp('Error! Could not detect environment. Could not set projects paths.');
        return;
    end    
       
    switch iDetectedEnvironment            
        case ENVIRONMENT_MEG_LFS1
            %strFieldTripDir = '/data/common/FieldtripCurrent/fieldtrip-20120812'; % required for head model creation
            %strFieldTripDir = '/data/common/FieldtripCurrent/fieldtrip-20131111/'; % required for ft_neighbourselection in TFRStatsTaskvsBaseline
            strFieldTripDir = '/data/common/FieldtripCurrent/fieldtrip-20150515/';
            strProjectRootDir = '/data/projects/ATWM1/Presentation/';
        case ENVIRONMENT_LOCAL_MACHINE_MACBOOKPRO13
            %strFieldTripDir = '/Users/mmb/MEG/mschaum/Software/fieldtrip/fieldtrip-20120812/';
            strFieldTripDir = '/Users/mmb/MEG/mschaum/Software/fieldtrip/fieldtrip-20131111/';
            strProjectRootDir = '/Users/mmb/MEG/ATWM1/Presentation/';
        case ENVIRONMENT_LOCAL_MACHINE_IMAC27
            strFieldTripDir = '/mis0/MEG/mschaum/Software/fieldtrip/fieldtrip-20120812/';
            strProjectRootDir = '/Users/mis0/MEG/ATWM1/Presentation/';
    end
       
    % reset path to launched state
    path(pathdef);
    
    %addpath(strFieldTripDir);
    
    strMatlabPath = sprintf('%MATLAB_CreatePresentationFiles_WorkingMemory/', strProjectRootDir);
    addpath(strMatlabPath);
    %strMatlabPath = sprintf('%sMATLABScripts/SharedFunctions/', strProjectRootDir);
    %addpath(strMatlabPath);
    
    % remove workaround of calling function
    %rmpath('./../SharedFunctions');

    strMessage = sprintf('Project path was set to <%s>.', strProjectRootDir);
    disp(strMessage);
   
    %ft_defaults;
    
end