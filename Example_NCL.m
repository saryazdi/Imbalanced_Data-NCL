clear all
close all
clc
% ~~~~~~ CODE START ~~~~~~~~
Sample = importdata('Example_Imbalanced_Dataset.mat'); % Load samples that need to be oversampled
[size1 size2] = size(Sample);
% Undersampling using NCL BEGIN ---------
DeleteAddress = NCL(Sample);
Undersampled = Sample;
if DeleteAddress==0
    fprintf('No samples were required to be removed\n')
else
    Undersampled(DeleteAddress,:) = [];
end
% Undersampling using NCL END -----------