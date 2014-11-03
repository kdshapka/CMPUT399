function [bdb] = classifyImages(imageFolder, imageFormat, method)

% Default parameters.
if nargin < 3
    method = 'knn';
end
if nargin < 2
    imageFormat = '.jpg';
end

% Set any command paths for toolboxes that we'll be needing.
setup;

% A database for storing our pictures, along with the presence and location
% of bears, if any.
bdb = constructBDB(imageFolder, imageFormat);

% The mask of the area in which we will look for bears. *** Shall we make
% this so the user can select the area from an image?
maskName = strcat('mask', imageFormat);
mask = imread(maskName);

if strcmp(method, 'knn') % do supervised learning via knn with cross-validation
    bdb = knn(bdb, mask);
end

end