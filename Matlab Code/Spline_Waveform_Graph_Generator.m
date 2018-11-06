%% Plot Controls
figure('NumberTitle', 'off', 'Name', 'Pulsatile Waveform - Controls');
subplot(1,9,1)
hold
f = pchip(x,(CONTROL_Pre_avgwave.SCAo)'*1000,xq1);
plot(x,(CONTROL_Pre_avgwave.SCAo)'*1000,'.k',xq1,f,'k')
f2 = pchip(x,(CONTROL_Post_avgwave.SCAo)'*1000,xq1);
plot(x,(CONTROL_Post_avgwave.SCAo)'*1000,'.b',xq1,f2,'b')
title('SCAo','fontsize',12)
xlabel('Cardiac Frame','fontsize',11)
ylabel('Instantaneous Flow Rate (mL/s)','fontsize',11)

subplot(1,9,2)
hold
f = pchip(x,(CONTROL_Pre_avgwave.IRAo)'*1000,xq1);
plot(x,(CONTROL_Pre_avgwave.IRAo)'*1000,'.k',xq1,f,'k')
f2 = pchip(x,(CONTROL_Post_avgwave.IRAo)'*1000,xq1);
plot(x,(CONTROL_Post_avgwave.IRAo)'*1000,'.b',xq1,f2,'b')
title('IRAo','fontsize',12)

subplot(1,9,6)
hold
f = pchip(x,(CONTROL_Pre_avgwave.LRA)'*1000,xq1);
plot(x,(CONTROL_Pre_avgwave.LRA)'*1000,'.k',xq1,f,'k')
f2 = pchip(x,(CONTROL_Post_avgwave.LRA)'*1000,xq1);
plot(x,(CONTROL_Post_avgwave.LRA)'*1000,'.b',xq1,f2,'b')
title('LRA','fontsize',12)

subplot(1,9,5)
hold
f = pchip(x,(CONTROL_Pre_avgwave.RRA)'*1000,xq1);
plot(x,(CONTROL_Pre_avgwave.RRA)'*1000,'.k',xq1,f,'k')
f2 = pchip(x,(CONTROL_Post_avgwave.RRA)'*1000,xq1);
plot(x,(CONTROL_Post_avgwave.RRA)'*1000,'.b',xq1,f2,'b')
title('RRA','fontsize',12)

subplot(1,9,4)
hold
f = pchip(x,(CONTROL_Pre_avgwave.SMA)'*1000,xq1);
plot(x,(CONTROL_Pre_avgwave.SMA)'*1000,'.k',xq1,f,'k')
f2 = pchip(x,(CONTROL_Post_avgwave.SMA)'*1000,xq1);
plot(x,(CONTROL_Post_avgwave.SMA)'*1000,'.b',xq1,f2,'b')
title('SMA','fontsize',12)

subplot(1,9,3)
hold
f = pchip(x,(CONTROL_Pre_avgwave.CA)'*1000,xq1);
plot(x,(CONTROL_Pre_avgwave.CA)'*1000,'.k',xq1,f,'k')
f2 = pchip(x,(CONTROL_Post_avgwave.CA)'*1000,xq1);
plot(x,(CONTROL_Post_avgwave.CA)'*1000,'.b',xq1,f2,'b')
title('CA','fontsize',12)

subplot(1,9,7)
hold
f = pchip(x,(CONTROL_Pre_avgwave.SMV)'*1000,xq1);
plot(x,(CONTROL_Pre_avgwave.SMV)'*1000,'.k',xq1,f,'k')
f2 = pchip(x,(CONTROL_Post_avgwave.SMV)'*1000,xq1);
plot(x,(CONTROL_Post_avgwave.SMV)'*1000,'.b',xq1,f2,'b')
title('SMV','fontsize',12)

subplot(1,9,8)
hold
f = pchip(x,(CONTROL_Pre_avgwave.SV)'*1000,xq1);
plot(x,(CONTROL_Pre_avgwave.SV)'*1000,'.k',xq1,f,'k')
f2 = pchip(x,(CONTROL_Post_avgwave.SV)'*1000,xq1);
plot(x,(CONTROL_Post_avgwave.SV)'*1000,'.b',xq1,f2,'b')
title('SV','fontsize',12)

subplot(1,9,9)
hold
f = pchip(x,(CONTROL_Pre_avgwave.PV)'*1000,xq1);
plot(x,(CONTROL_Pre_avgwave.PV)'*1000,'.k',xq1,f,'k')
f2 = pchip(x,(CONTROL_Post_avgwave.PV)'*1000,xq1);
plot(x,(CONTROL_Post_avgwave.PV)'*1000,'.b',xq1,f2,'b')
title('PV','fontsize',12)

%% Plot CMI
figure('NumberTitle', 'off', 'Name', 'Pulsatile Waveform - CMI');
subplot(1,9,1)
hold
f = pchip(x,(ISCHEMIA_Pre_avgwave.SCAo)'*1000,xq1);
plot(x,(ISCHEMIA_Pre_avgwave.SCAo)'*1000,'.k',xq1,f,'k')
f2 = pchip(x,(ISCHEMIA_Post_avgwave.SCAo)'*1000,xq1);
plot(x,(ISCHEMIA_Post_avgwave.SCAo)'*1000,'.b',xq1,f2,'b')
title('SCAo','fontsize',12)
xlabel('Cardiac Frame','fontsize',11)
ylabel('Instantaneous Flow Rate (mL/s)','fontsize',11)

subplot(1,9,2)
hold
f = pchip(x,(ISCHEMIA_Pre_avgwave.IRAo)'*1000,xq1);
plot(x,(ISCHEMIA_Pre_avgwave.IRAo)'*1000,'.k',xq1,f,'k')
f2 = pchip(x,(ISCHEMIA_Post_avgwave.IRAo)'*1000,xq1);
plot(x,(ISCHEMIA_Post_avgwave.IRAo)'*1000,'.b',xq1,f2,'b')
title('IRAo','fontsize',12)

subplot(1,9,6)
hold
f = pchip(x,(ISCHEMIA_Pre_avgwave.LRA)'*1000,xq1);
plot(x,(ISCHEMIA_Pre_avgwave.LRA)'*1000,'.k',xq1,f,'k')
f2 = pchip(x,(ISCHEMIA_Post_avgwave.LRA)'*1000,xq1);
plot(x,(ISCHEMIA_Post_avgwave.LRA)'*1000,'.b',xq1,f2,'b')
title('LRA','fontsize',12)

subplot(1,9,5)
hold
f = pchip(x,(ISCHEMIA_Pre_avgwave.RRA)'*1000,xq1);
plot(x,(ISCHEMIA_Pre_avgwave.RRA)'*1000,'.k',xq1,f,'k')
f2 = pchip(x,(ISCHEMIA_Post_avgwave.RRA)'*1000,xq1);
plot(x,(ISCHEMIA_Post_avgwave.RRA)'*1000,'.b',xq1,f2,'b')
title('RRA','fontsize',12)

subplot(1,9,4)
hold
f = pchip(x,(ISCHEMIA_Pre_avgwave.SMA)'*1000,xq1);
plot(x,(ISCHEMIA_Pre_avgwave.SMA)'*1000,'.k',xq1,f,'k')
f2 = pchip(x,(ISCHEMIA_Post_avgwave.SMA)'*1000,xq1);
plot(x,(ISCHEMIA_Post_avgwave.SMA)'*1000,'.b',xq1,f2,'b')
title('SMA','fontsize',12)

subplot(1,9,3)
hold
f = pchip(x,(ISCHEMIA_Pre_avgwave.CA)'*1000,xq1);
plot(x,(ISCHEMIA_Pre_avgwave.CA)'*1000,'.k',xq1,f,'k')
f2 = pchip(x,(ISCHEMIA_Post_avgwave.CA)'*1000,xq1);
plot(x,(ISCHEMIA_Post_avgwave.CA)'*1000,'.b',xq1,f2,'b')
title('CA','fontsize',12)

subplot(1,9,7)
hold
f = pchip(x,(ISCHEMIA_Pre_avgwave.SMV)'*1000,xq1);
plot(x,(ISCHEMIA_Pre_avgwave.SMV)'*1000,'.k',xq1,f,'k')
f2 = pchip(x,(ISCHEMIA_Post_avgwave.SMV)'*1000,xq1);
plot(x,(ISCHEMIA_Post_avgwave.SMV)'*1000,'.b',xq1,f2,'b')
title('SMV','fontsize',12)

subplot(1,9,8)
hold
f = pchip(x,(ISCHEMIA_Pre_avgwave.SV)'*1000,xq1);
plot(x,(ISCHEMIA_Pre_avgwave.SV)'*1000,'.k',xq1,f,'k')
f2 = pchip(x,(ISCHEMIA_Post_avgwave.SV)'*1000,xq1);
plot(x,(ISCHEMIA_Post_avgwave.SV)'*1000,'.b',xq1,f2,'b')
title('SV','fontsize',12)

subplot(1,9,9)
hold
f = pchip(x,(ISCHEMIA_Pre_avgwave.PV)'*1000,xq1);
plot(x,(ISCHEMIA_Pre_avgwave.PV)'*1000,'.k',xq1,f,'k')
f2 = pchip(x,(ISCHEMIA_Post_avgwave.PV)'*1000,xq1);
plot(x,(ISCHEMIA_Post_avgwave.PV)'*1000,'.b',xq1,f2,'b')
title('PV','fontsize',12)

%% Plot Negative Diagnosis
figure('NumberTitle', 'off', 'Name', 'Pulsatile Waveform - Negative Diagnosis');
subplot(1,9,1)
hold
f = pchip(x,(NEGATIVE_Pre_avgwave.SCAo)'*1000,xq1);
plot(x,(NEGATIVE_Pre_avgwave.SCAo)'*1000,'.k',xq1,f,'k')
f2 = pchip(x,(NEGATIVE_Post_avgwave.SCAo)'*1000,xq1);
plot(x,(NEGATIVE_Post_avgwave.SCAo)'*1000,'.b',xq1,f2,'b')
title('SCAo','fontsize',12)
xlabel('Cardiac Frame','fontsize',11)
ylabel('Instantaneous Flow Rate (mL/s)','fontsize',11)

subplot(1,9,2)
hold
f = pchip(x,(NEGATIVE_Pre_avgwave.IRAo)'*1000,xq1);
plot(x,(NEGATIVE_Pre_avgwave.IRAo)'*1000,'.k',xq1,f,'k')
f2 = pchip(x,(NEGATIVE_Post_avgwave.IRAo)'*1000,xq1);
plot(x,(NEGATIVE_Post_avgwave.IRAo)'*1000,'.b',xq1,f2,'b')
title('IRAo','fontsize',12)

subplot(1,9,6)
hold
f = pchip(x,(NEGATIVE_Pre_avgwave.LRA)'*1000,xq1);
plot(x,(NEGATIVE_Pre_avgwave.LRA)'*1000,'.k',xq1,f,'k')
f2 = pchip(x,(NEGATIVE_Post_avgwave.LRA)'*1000,xq1);
plot(x,(NEGATIVE_Post_avgwave.LRA)'*1000,'.b',xq1,f2,'b')
title('LRA','fontsize',12)

subplot(1,9,5)
hold
f = pchip(x,(NEGATIVE_Pre_avgwave.RRA)'*1000,xq1);
plot(x,(NEGATIVE_Pre_avgwave.RRA)'*1000,'.k',xq1,f,'k')
f2 = pchip(x,(NEGATIVE_Post_avgwave.RRA)'*1000,xq1);
plot(x,(NEGATIVE_Post_avgwave.RRA)'*1000,'.b',xq1,f2,'b')
title('RRA','fontsize',12)

subplot(1,9,4)
hold
f = pchip(x,(NEGATIVE_Pre_avgwave.SMA)'*1000,xq1);
plot(x,(NEGATIVE_Pre_avgwave.SMA)'*1000,'.k',xq1,f,'k')
f2 = pchip(x,(NEGATIVE_Post_avgwave.SMA)'*1000,xq1);
plot(x,(NEGATIVE_Post_avgwave.SMA)'*1000,'.b',xq1,f2,'b')
title('SMA','fontsize',12)

subplot(1,9,3)
hold
f = pchip(x,(NEGATIVE_Pre_avgwave.CA)'*1000,xq1);
plot(x,(NEGATIVE_Pre_avgwave.CA)'*1000,'.k',xq1,f,'k')
f2 = pchip(x,(NEGATIVE_Post_avgwave.CA)'*1000,xq1);
plot(x,(NEGATIVE_Post_avgwave.CA)'*1000,'.b',xq1,f2,'b')
title('CA','fontsize',12)

subplot(1,9,7)
hold
f = pchip(x,(NEGATIVE_Pre_avgwave.SMV)'*1000,xq1);
plot(x,(NEGATIVE_Pre_avgwave.SMV)'*1000,'.k',xq1,f,'k')
f2 = pchip(x,(NEGATIVE_Post_avgwave.SMV)'*1000,xq1);
plot(x,(NEGATIVE_Post_avgwave.SMV)'*1000,'.b',xq1,f2,'b')
title('SMV','fontsize',12)

subplot(1,9,8)
hold
f = pchip(x,(NEGATIVE_Pre_avgwave.SV)'*1000,xq1);
plot(x,(NEGATIVE_Pre_avgwave.SV)'*1000,'.k',xq1,f,'k')
f2 = pchip(x,(NEGATIVE_Post_avgwave.SV)'*1000,xq1);
plot(x,(NEGATIVE_Post_avgwave.SV)'*1000,'.b',xq1,f2,'b')
title('SV','fontsize',12)

subplot(1,9,9)
hold
f = pchip(x,(NEGATIVE_Pre_avgwave.PV)'*1000,xq1);
plot(x,(NEGATIVE_Pre_avgwave.PV)'*1000,'.k',xq1,f,'k')
f2 = pchip(x,(NEGATIVE_Post_avgwave.PV)'*1000,xq1);
plot(x,(NEGATIVE_Post_avgwave.PV)'*1000,'.b',xq1,f2,'b')
title('PV','fontsize',12)