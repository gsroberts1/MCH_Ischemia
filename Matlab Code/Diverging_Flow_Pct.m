%Calculates amount of flow that diverts from the SCAo (as a percentage) for
%arterial vessels. Also calculates the percentage that goes into the PV in
%the case of venous vessels.
function[diverging_flow] = Diverging_Flow_Pct()
SCAo = xlsread('flow_data_SCAo','Cycle analysis','B1:B1');
IRAo = xlsread('flow_data_IRAo','Cycle analysis','B1:B1');
LRA = xlsread('flow_data_LRA','Cycle analysis','B1:B1');
RRA = xlsread('flow_data_RRA','Cycle analysis','B1:B1');
SMA = xlsread('flow_data_SMA','Cycle analysis','B1:B1');
CA = xlsread('flow_data_CA','Cycle analysis','B1:B1');
%LRA2 = xlsread('flow_data_LRA2','Cycle analysis','B1:B1');
%CHA = xlsread('flow_data_CHA','Cycle analysis','B1:B1');
%SA = xlsread('flow_data_SA','Cycle analysis','B1:B1');
SMV = xlsread('flow_data_SMV','Cycle analysis','B1:B1');
SV = xlsread('flow_data_SV','Cycle analysis','B1:B1');
PV = xlsread('flow_data_PV','Cycle analysis','B1:B1');


IRAo = (IRAo/SCAo)*100;
LRA = (LRA/SCAo)*100;
RRA = (RRA/SCAo)*100;
SMA = (SMA/SCAo)*100;
CA = (CA/SCAo)*100;


SMV = (SMV/PV)*100;
SV = (SV/PV)*100;

A = {'IRA','LRA','RRA','SMA','CA','SMV', 'SV'; 
    IRAo,LRA,RRA,SMA,CA,SMV,SV};
diverging_flow = A;
filename = 'Diverging_Flow_Pct.xlsx';
xlswrite(filename,A);

end
