function [bdb_knn] = knn(bdb, mask, no_of_bins, no_of_folds)

% Default Parameters.
if nargin < 4
   no_of_folds=10;
end
if nargin < 3
    no_of_bins=32;
end
    
    bdb_knn = bdb;
end