clear all
close all

doc = fopen('scan_info.txt');
text = textscan(doc,'%s');
text = text{1}; %Cell array

index = find(strcmp(text, 'Date:'));
    date = text{index+1};
index = find(strcmp(text, 'Age'));
    age = text{index+2};
index = find(strcmp(text, 'Weight:'));
    weight = text{index+1};
index = find(strcmp(text, 'Sex:'));
    sex = text{index+1};
index = find(strcmp(text, 'Coil'));
    coil_1 = text{index+3};
index = find(strcmp(text, 'Coil'));
    coil_2 = text{index+4};
coil = [coil_1 ' ' coil_2]; %Concatenate coil names
index = find(strcmp(text, 'TR'));
    tr = text{index+2};
index = find(strcmp(text, 'TE:'));
    te = text{index+1};
index = find(strcmp(text, 'tip:'));
    tip = text{index+1};
index = find(strcmp(text, 'kHz')); %'Time' is non-unique.
    time = text{index+4};
index = find(strcmp(text, 'ACQUISITION'));%'X' and 'FOV' are non-unique
    xfov = text{index+5};
index = find(strcmp(text, 'ACQUISITION'));
    yfov = text{index+10}; 
index = find(strcmp(text, 'ACQUISITION'));
    Nx = text{index+15}; 
index = find(strcmp(text, 'ACQUISITION'));
    Ny = text{index+19}; 
xres = num2str(str2double(xfov)/str2double(Nx)); %calculate resolution
yres = num2str(str2double(yfov)/str2double(Ny)); %calculate resolution
index = find(strcmp(text, 'ACQUISITION'));
    zres = text{index+23}; 
index = find(strcmp(text, 'Nproj:'));
    Nproj = text{index+1}; 
index = find(strcmp(text, '(G)'));
    Bfield = text{index+1}; 
Bfield = str2double(Bfield); %Turn Gauss to Tesla
Bfield = Bfield/10000;
Bfield = num2str(Bfield);
index = find(strcmp(text, 'Venc'));
    venc = text{index+1}; 

scan_data = {age, sex, weight, Bfield, coil, tr, te, venc, tip, xres, yres, zres, Nproj, time, date}
filename = 'Scan_Data.xlsx';
xlswrite(filename,scan_data);
fclose(doc);