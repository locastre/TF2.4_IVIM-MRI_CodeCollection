% Authors: Eve LoCastro (locastre@mskcc.org), Dr. Ramesh Paudyal (paudyalr@mskcc.org), Dr. Amita Shukla-Dave (davea@mskcc.org)
% Institution: Memorial Sloan Kettering Cancer Center
% Address: 321 E 61st St, New York, NY 10022

% This is an example usage script for MSK Medical Physics Dave Lab QAMPER IVIM
% Please replace the variable names below with path values for 
%       qamper_path: path to MRI-QAMPER_IVIM folder
%       img_nii: multi-b value DWI (4-D NIfTI)
%       bval_file: b-value information (txt file)
%       roi_nii: single-volume mask ROI image (NIfTI)




qamper_path = 'path:\to\MRI-QAMPER_IVIM';
addpath(genpath(qamper_path));

img_nii = 'dwi.nii';
bval_file = fullfile(qamper_path,'test_data','702-HN401D-D2019_10_08.bval');
roi_nii = fullfile(qamper_path,'test_data','702-HN401D-D2019_10_08_BD_REDO_SV.nii.gz');

save_folder = fullfile(qamper_path,'test_data');

batchResultsFolder = run_QAMPER_IVIM(img_nii,bval_file,roi_nii,save_folder);