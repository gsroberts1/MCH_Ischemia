%Calculates net flow from the 9 measured vessels.
function[net_flow] = Net_Flow_Values()
SCAo = xlsread('flow_data_SCAo','Cycle analysis','B1:B1');
%GA = xlsread('flow_data_GA','Cycle analysis','B1:B1');
%CHA = xlsread('flow_data_CHA','Cycle analysis','B1:B1');
IRAo = xlsread('flow_data_IRAo','Cycle analysis','B1:B1');
LRA = xlsread('flow_data_LRA','Cycle analysis','B1:B1');
RRA = xlsread('flow_data_RRA','Cycle analysis','B1:B1');
SMA = xlsread('flow_data_SMA','Cycle analysis','B1:B1');
CA = xlsread('flow_data_CA','Cycle analysis','B1:B1');
SMV = xlsread('flow_data_SMV','Cycle analysis','B1:B1');
SV = xlsread('flow_data_SV','Cycle analysis','B1:B1');
PV = xlsread('flow_data_PV','Cycle analysis','B1:B1');

B = 1000*[SCAo, IRAo, LRA, RRA, SMA, CA, SMV, SV, PV];
net_flow = B;
filename = 'Net_Flow_Values.xlsx';
xlswrite(filename,B);
