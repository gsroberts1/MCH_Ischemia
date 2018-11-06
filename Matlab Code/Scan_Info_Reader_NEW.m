clear all
close all

doc = fopen('scan_info.txt');
text = textscan(doc,'%s');
text = text{1}; %Cell array

index = find(strcmp(text, 'Age'));
    age = text{index+2};
index = find(strcmp(text, 'Weight'));
    weight = text{index+2};
index = find(strcmp(text, 'Sex'));
    sex = text{index+2};
index = find(strcmp(text, 'Date'));
    date = text{index+2};
index = find(strcmp(text, 'TR'));
    tr = text{index+2};
index = find(strcmp(text, 'TE'));
    te = text{index+2};
index = find(strcmp(text, 'tip'));
    tip = text{index+2};
index = find(strcmp(text, 'Time')); %'Time' is non-unique.
    time = text{index+2};
index = find(strcmp(text, 'Coil'));
    coil_1 = text{index+3};
index = find(strcmp(text, 'Coil'));
    coil_2 = text{index+4};
coil = [coil_1 ' ' coil_2]; %Concatenate coil names
index = find(strcmp(text, 'Venc'));
    venc = text{index+2}; 
index = find(strcmp(text, 'rhuser08'));
    Nproj = text{index+2}; 
xres = '1.25';
yres = '1.25';
zres = '1.25';
Bfield = '000';
scan_data = {age, sex, weight, Bfield, coil, tr, te, venc, tip, xres, yres, zres, Nproj, time, date}
filename = 'Scan_Data.xlsx';
xlswrite(filename,scan_data);
fclose(doc);