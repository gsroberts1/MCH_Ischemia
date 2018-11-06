%Calculates measured loss of blood flow from SCAo to IRAo. Compares that to
%the sum of the blood flow in arteries between SCAo and IRAo. Conservation
%of flow would tell us that these values should theoretically be the same.
%But there will be some error realistically. This function provides that
%error calculation.
function[cons_of_flow,net_flow,PI_index,RI_index] = flow_conserv()
SCAo = xlsread('flow_data_SCAo','Cycle analysis','B1:B1');
IRAo = xlsread('flow_data_IRAo','Cycle analysis','B1:B1');
LRA = xlsread('flow_data_LRA','Cycle analysis','B1:B1');
RRA = xlsread('flow_data_RRA','Cycle analysis','B1:B1');
%LRA02 = xlsread('flow_data_LRA2','Cycle analysis','B1:B1'); 
%SA = xlsread('flow_data_SA','Cycle analysis','B1:B1');
%CHA = xlsread('flow_data_CHA','Cycle analysis','B1:B1');
SMA = xlsread('flow_data_SMA','Cycle analysis','B1:B1');
CA = xlsread('flow_data_CA','Cycle analysis','B1:B1');
SMV = xlsread('flow_data_SMV','Cycle analysis','B1:B1');
SV = xlsread('flow_data_SV','Cycle analysis','B1:B1');
PV = xlsread('flow_data_PV','Cycle analysis','B1:B1');


% True loss of blood flow will be calculated by taking flow value at
%supraceliac portion of aorta (SCAo) (relative to measured vessels)
%and subtracting it from inferior aspect of aorta (IRAo).
% Calculated loss of blood will be calculated by taking blood flow value at
%supraceliac portion of aorta (SCAo) and subtracting flow from vessels that
%branch off of aorta before reaching IRAo.
% This should result in a conservation of flow calculation.
arterial_loss = (SCAo - IRAo)*100;
calc_art_loss = (LRA + RRA + SMA + CA)*100;

% True venous flow in the portal vein (PV) will be simply measured by a cut
%plane in the PV.
% Calculated gained flow into the portal bein will be calculated 
%by adding flow values from the vessels that lead to the PV, namely the 
%superior mesenteric vein (SMV) and splenic vein (SV).
% This should also result in a conservation of flow calculation.
true_PV_flow = PV*100;
calc_PV_flow = (SV + SMV)*100;

% Normalized error between calculated and true venous flow loss.
% Will be normalized over TRUE flow.
err_arterial = ((arterial_loss - calc_art_loss)/(arterial_loss))*100;
err_venous = ((true_PV_flow - calc_PV_flow)/(true_PV_flow))*100;

A = {'arterial_loss (mL/cycle)','calc_art_loss','true_PV_flow','calc_PV_flow','err_arterial(%)','err_venous(%)'; 
    arterial_loss,calc_art_loss,true_PV_flow,calc_PV_flow,err_arterial,err_venous};
cons_of_flow = A;
filename = 'Conservation_of_Flow_Calc.xlsx';
xlswrite(filename,A);

B = 1000*[SCAo, IRAo, LRA, RRA, SMA, CA, SMV, SV, PV];
net_flow = B;
filename2 = 'Net_Flow_Values.xlsx';
xlswrite(filename2,B);


SCAo1 = xlsread('flow_data_SCAo','Cycle analysis','B13:B13');
IRAo1 = xlsread('flow_data_IRAo','Cycle analysis','B13:B13');
LRA1 = xlsread('flow_data_LRA','Cycle analysis','B13:B13'); 
RRA1 = xlsread('flow_data_RRA','Cycle analysis','B13:B13');
%LRA12 = xlsread('flow_data_LRA2','Cycle analysis','B13:B13');
%SA1 = xlsread('flow_data_SA','Cycle analysis','B13:B13');
%CHA1 = xlsread('flow_data_CHA','Cycle analysis','B13:B13');
SMA1 = xlsread('flow_data_SMA','Cycle analysis','B13:B13');
CA1 = xlsread('flow_data_CA','Cycle analysis','B13:B13');
SMV1 = xlsread('flow_data_SMV','Cycle analysis','B13:B13');
SV1 = xlsread('flow_data_SV','Cycle analysis','B13:B13');
PV1 = xlsread('flow_data_PV','Cycle analysis','B13:B13');


C = [SCAo1, IRAo1, LRA1, RRA1, SMA1, CA1, SMV1, SV1, PV1];%%%
PI_index = C;
filename3 = 'PI_index.xlsx';
xlswrite(filename3,C);

SCAo2 = xlsread('flow_data_SCAo','Cycle analysis','B14:B14');
IRAo2 = xlsread('flow_data_IRAo','Cycle analysis','B14:B14');
LRA2 = xlsread('flow_data_LRA','Cycle analysis','B14:B14');
RRA2 = xlsread('flow_data_RRA','Cycle analysis','B14:B14');
%RRA22 = xlsread('flow_data_RRA2','Cycle analysis','B14:B14');
%SA2 = xlsread('flow_data_SA','Cycle analysis','B14:B14');
%CHA2 = xlsread('flow_data_CHA','Cycle analysis','B14:B14');
SMA2 = xlsread('flow_data_SMA','Cycle analysis','B14:B14');
CA2 = xlsread('flow_data_CA','Cycle analysis','B14:B14');
SMV2 = xlsread('flow_data_SMV','Cycle analysis','B14:B14');
SV2 = xlsread('flow_data_SV','Cycle analysis','B14:B14');
PV2 = xlsread('flow_data_PV','Cycle analysis','B14:B14');


D = [SCAo2, IRAo2, LRA2, RRA2, SMA2, CA2, SMV2, SV2, PV2];
RI_index = D;
filename4 = 'RI_index.xlsx';
xlswrite(filename4,D);

end

