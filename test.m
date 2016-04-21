function test();


    %cd '/Users/mmb/MEG/ATWM1/Presentation';

    cd '/data/projects/ATWM1/Presentation';    
    
    ! git status
    
    % get changes from GitHub
    ! git pull
    
    % add new files and directories
    %eval(sprintf('! git add /data/projects/ATWM1/Presentation/test.m'))
    %! git add /data/projects/ATWM1/Presentation/test.m
    ! git add *
    
    % commit changes
    %eval(sprintf('! git commit -m "This is a test"'));
    ! git commit -m "This is a test"
    
    % push to GitHub
    ! git push
    
    ! git status


end