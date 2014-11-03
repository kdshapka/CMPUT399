function [bdb] = constructBDB(imageFolder, imageFormat)

% Gather a list of all the image files with the extension we're looking at.
fileName = strcat('*',imageFormat);
filePattern = fullfile(imageFolder, fileName);
count = length(dir(filePattern));

images.name = dir(filePattern); % The name of the image.
images.id = 1:count; % The index for accessing the image.
images.features = cell(1,count); % Whatever features we use to classify the image.
images.bears = cell(1,count); % The location of bears in the image, if any.
%****************************************************************
% NOTE: Assigning a location should be done like so:            *
%       bdb.images.bears{id} = [topLeftY,       topLeftX;       *
%                               bottomRightY,   bottomRightX];  *
%****************************************************************

bdb.images = images; 
bdb.dir = imageFolder;
bdb.imageFormat = imageFormat;
bdb.featureOpts = {};
end