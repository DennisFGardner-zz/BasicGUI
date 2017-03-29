% Test Scripts 
%
% I will test out bits of code before puting them into my GUI

%% save a variable

path2save = pwd;

CCDparameters.Npx = 512;
CCDparameters.Npy = 512;
CCDparameters.px = 13.5; 

% convert to um
CCDparameters.px = CCDparameters.px * 10^(-6);

save([path2save,'\','CCDparameters'], CCDparameters);
