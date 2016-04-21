function PushToGitHub()

    cd '/Users/mmb/MEG/ATWM1/Presentation/MATLAB_CreatePresentationFiles_WorkingMemory';

    ! git status
    
    % get changes from GitHub
    ! git pull
    
    % add new files and directories
    ! git add *
    
    % commit changes
    ! git commit -m "Add new presentation files"
    
    % push to GitHub
    ! git push
    
    ! git status

end