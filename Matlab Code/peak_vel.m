function[velocity] = peak_vel()
SCAo = xlsread('flow_data_SCAo','velocities','M3:M20');
IRAo = xlsread('flow_data_IRAo','velocities','M3:M20');
LRA = xlsread('flow_data_LRA','velocities','M3:M20');
RRA = xlsread('flow_data_RRA','velocities','M3:M20');
SMA = xlsread('flow_data_SMA','velocities','M3:M20');
% CHA = xlsread('flow_data_CHA','velocities','M3:M16');
% GA = xlsread('flow_data_GA','velocities','M3:M16');
% CA = xlsread('flow_data_CA','velocities','M3:M20');
SMV = xlsread('flow_data_SMV','velocities','M3:M20');
SV = xlsread('flow_data_SV','velocities','M3:M20');
PV = xlsread('flow_data_PV','velocities','M3:M20');

SCAo = max(SCAo)*100;
IRAo = max(IRAo)*100;
LRA = max(LRA)*100;
RRA = max(RRA)*100;
SMA = max(SMA)*100;
% CHA = max(CHA)*100;
% GA = max(GA)*100;
% CA = max(CA)*100;
SMV = max(SMV)*100;
SV = max(SV)*100;
PV = max(PV)*100;


velocity = [SCAo, IRAo, LRA, RRA, SMA, SMV, SV, PV];
filename = 'Peak_Velocities.xlsx';
xlswrite(filename,velocity);


