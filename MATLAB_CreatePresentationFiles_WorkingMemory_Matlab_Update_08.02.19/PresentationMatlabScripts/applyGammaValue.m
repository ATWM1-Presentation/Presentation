function applyGammaValue(gamma, files)
% APPLY_GAMMA_VALUE - Read in images and apply a gamma correction
%
%   files = apply_gamma_value(gamma, {files})
%   
% INPUT
% -----
%      gamma : gamma value to be applied
%      files : optional, cell array of filenames. If not present, files
%              have to be selected via a GUI dialog
%
%  Resulting files are stored as BMPs in the same folder as the original 
%  files with the gamma value appended to the basename, .e.g
%       some_picture_g2.65.bmp
%   

if nargin < 2
    [filename, pathname] = uigetfile(...
        {'*.bmp;*.BMP;*.jpg;*.jpeg;*.tif;*.tiff','Images (*.bmp, *.jpg, *.tif)'; 
        '*.*', 'All files (*.*)'}, 'MultiSelect', 'on');
    if ~iscell(filename); filename = {filename}; end
    if filename{1} == 0; return; end
    files = cellfun(@(x) fullfile(pathname, x), filename, 'UniformOutput', false);
end

for iImage = 1:length(files)    
    % strip extension from filename
    [~, basename, ext] = fileparts(files{iImage});
    
    % read image
    img = imread(files{iImage});
    
    % apply gamma value
    img = uint8(((double(img)/255).^gamma) * 255);
    
    % write image
    imwrite(img, fullfile(pathname, [basename, sprintf('_g%.2f', gamma), '.bmp']));
    
    
end

