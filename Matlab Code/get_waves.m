%% FLow Waveforms

% Start in the highest directory hierarchy containing all patient info.

function[flow] = get_waves()

dirinfo = dir('./*/*/*.mat');
dirinfo = [dirinfo;dir('./*/*/*/*.mat')];
dirinfo = [dirinfo;dir('./*/*/*/*/*.mat')];
dirinfo = [dirinfo;dir('./*/*/*/*/*/*.mat')];
dirinfo = [dirinfo;dir('./*/*/*/*/*/*/*.mat')];
flow.SCAo = [];
flow.IRAo = [];
flow.LRA = [];
flow.RRA = [];
flow.SMA = [];
flow.CA = [];
flow.SMV = [];
flow.SV = [];
flow.PV = [];

for i = 1:length(dirinfo)
    if dirinfo(i).bytes > 1000 && contains(dirinfo(i).folder,'flatfile')
        folder = dirinfo(i).folder;
        name = dirinfo(i).name;
        file = [folder '\' name];
        load(file);
        if length(struct.timeData(:,1)) == 16 && contains(dirinfo(i).folder,'POST') && ~contains(dirinfo(i).folder,'ISCHEMIA') %%%%
            if contains(file,'SCAo')
                flow.SCAo = [flow.SCAo;(struct.timeData(:,3))' dirinfo(i).folder];
            elseif contains(file,'IRAo')
                flow.IRAo = [flow.IRAo;(struct.timeData(:,3))' dirinfo(i).folder];
            elseif contains(file,'LRA')
                flow.LRA = [flow.LRA;(struct.timeData(:,3))' dirinfo(i).folder]; 
            elseif contains(file,'RRA')
                flow.RRA = [flow.RRA;(struct.timeData(:,3))' dirinfo(i).folder];
            elseif contains(file,'SMA')
                flow.SMA = [flow.SMA;(struct.timeData(:,3))' dirinfo(i).folder];             
            elseif contains(file,'CA')
                flow.CA = [flow.CA;(struct.timeData(:,3))' dirinfo(i).folder];  
            elseif contains(file,'SMV')
                flow.SMV = [flow.SMV;(struct.timeData(:,3))' dirinfo(i).folder];         
            elseif contains(file,'SV')
                flow.SV = [flow.SV;(struct.timeData(:,3))' dirinfo(i).folder]; 
            else
                flow.PV = [flow.PV;(struct.timeData(:,3))' dirinfo(i).folder]; 
            end 
        end 
    end 
end 
        
    