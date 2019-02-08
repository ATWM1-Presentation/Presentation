strInputFolder = '/Users/mmb/MEG/ATWM1/Presentation/StimuliProPixx/';
vsFiles = dir(strcat(strInputFolder,'*.bmp'));

gamma = 2.60;
strOutputFolder = sprintf('/Users/mmb/MEG/ATWM1/Presentation/StimuliProPixx_Gamma_%0.2f/', gamma);
if ~exist(strOutputFolder)
    mkdir(strOutputFolder)
end

for iImage = 1:size(vsFiles,1)    
     
    strInputPath = sprintf('%s%s', strInputFolder, vsFiles(iImage).name);
    disp(strInputPath);
    
    % read image
    img = imread(strInputPath);
    
    % apply gamma value
    img = uint8(((double(img)/255).^gamma) * 255);
    
    % write image
    strOutputPath = sprintf('%s%s', strOutputFolder, vsFiles(iImage).name);    
    imwrite(img, strOutputPath);    
    
end
