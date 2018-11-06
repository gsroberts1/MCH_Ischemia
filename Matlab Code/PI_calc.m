function[PI_index] = PI_calc()
SCAo = xlsread('flow_data_SCAo','Cycle analysis','B13:B13');
IRAo = xlsread('flow_data_IRAo','Cycle analysis','B13:B13');
LRA = xlsread('flow_data_LRA','Cycle analysis','B13:B13');
RRA = xlsread('flow_data_RRA','Cycle analysis','B13:B13');
%GA = xlsread('flow_data_GA','Cycle analysis','B13:B13');
%CHA = xlsread('flow_data_CHA','Cycle analysis','B13:B13');
SMA = xlsread('flow_data_SMA','Cycle analysis','B13:B13');
CA = xlsread('flow_data_CA','Cycle analysis','B13:B13');
SMV = xlsread('flow_data_SMV','Cycle analysis','B13:B13');
SV = xlsread('flow_data_SV','Cycle analysis','B13:B13');
PV = xlsread('flow_data_PV','Cycle analysis','B13:B13');

A = [SCAo, IRAo, LRA, RRA, SMA, CA, SMV, SV, PV];
PI_index = A
filename = 'PI_index.xlsx';
xlswrite(filename,A);

SCAo = xlsread('flow_data_SCAo','Cycle analysis','B14:B14');
IRAo = xlsread('flow_data_IRAo','Cycle analysis','B14:B14');
LRA = xlsread('flow_data_LRA','Cycle analysis','B14:B14');
RRA = xlsread('flow_data_RRA','Cycle analysis','B14:B14');
%GA = xlsread('flow_data_GA','Cycle analysis','B14:B14');
%CHA = xlsread('flow_data_CHA','Cycle analysis','B14:B14');
SMA = xlsread('flow_data_SMA','Cycle analysis','B14:B14');
CA = xlsread('flow_data_CA','Cycle analysis','B14:B14');
SMV = xlsread('flow_data_SMV','Cycle analysis','B14:B14');
SV = xlsread('flow_data_SV','Cycle analysis','B14:B14');
PV = xlsread('flow_data_PV','Cycle analysis','B14:B14');

B = [SCAo, IRAo, LRA, RRA, SMA, CA, SMV, SV, PV];
RI_index = B
filename2 = 'RI_index.xlsx';
xlswrite(filename2,B);

end

