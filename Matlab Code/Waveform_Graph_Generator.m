%% Plot Controls
figure('NumberTitle', 'off', 'Name', 'Pulsatile Waveform - Controls');
subplot(1,9,1)
hold
plot(CONTROL_Pre_avgwave.SCAo*1000)
plot(CONTROL_Post_avgwave.SCAo*1000)
title('SCAo','fontsize',12)
xlabel('Cardiac Frame','fontsize',11)
ylabel('Instantaneous Flow Rate (mL/s)','fontsize',11)

subplot(1,9,2)
hold
plot(CONTROL_Pre_avgwave.IRAo*1000)
plot(CONTROL_Post_avgwave.IRAo*1000)
title('IRAo','fontsize',12)

subplot(1,9,3)
hold
plot(CONTROL_Pre_avgwave.CA*1000)
plot(CONTROL_Post_avgwave.CA*1000)
title('CA','fontsize',12)

subplot(1,9,4)
hold
plot(CONTROL_Pre_avgwave.SMA*1000)
plot(CONTROL_Post_avgwave.SMA*1000)
title('SMA','fontsize',12)

subplot(1,9,5)
hold
plot(CONTROL_Pre_avgwave.RRA*1000)
plot(CONTROL_Post_avgwave.RRA*1000)
title('RRA','fontsize',12)

subplot(1,9,6)
hold
plot(CONTROL_Pre_avgwave.LRA*1000)
plot(CONTROL_Post_avgwave.LRA*1000)
title('LRA','fontsize',12)

subplot(1,9,7)
hold
plot(CONTROL_Pre_avgwave.SMV*1000)
plot(CONTROL_Post_avgwave.SMV*1000)
title('SMV','fontsize',12)

subplot(1,9,8)
hold
plot(CONTROL_Pre_avgwave.SV*1000)
plot(CONTROL_Post_avgwave.SV*1000)
title('SV','fontsize',12)

subplot(1,9,9)
hold
plot(CONTROL_Pre_avgwave.PV*1000)
plot(CONTROL_Post_avgwave.PV*1000)
title('PV','fontsize',12)

%% Plot Ischemia
figure('NumberTitle', 'off', 'Name', 'Pulsatile Waveform - Ischemia');
subplot(1,9,1)
hold
plot(ISCHEMIA_Pre_avgwave.SCAo*1000)
plot(ISCHEMIA_Post_avgwave.SCAo*1000)
title('SCAo','fontsize',12)
xlabel('Cardiac Frame','fontsize',11)
ylabel('Instantaneous Flow Rate (mL/s)','fontsize',11)

subplot(1,9,2)
hold
plot(ISCHEMIA_Pre_avgwave.IRAo*1000)
plot(ISCHEMIA_Post_avgwave.IRAo*1000)
title('IRAo','fontsize',12)

subplot(1,9,3)
hold
plot(ISCHEMIA_Pre_avgwave.CA*1000)
plot(ISCHEMIA_Post_avgwave.CA*1000)
title('CA','fontsize',12)

subplot(1,9,4)
hold
plot(ISCHEMIA_Pre_avgwave.SMA*1000)
plot(ISCHEMIA_Post_avgwave.SMA*1000)
title('SMA','fontsize',12)

subplot(1,9,5)
hold
plot(ISCHEMIA_Pre_avgwave.RRA*1000)
plot(ISCHEMIA_Post_avgwave.RRA*1000)
title('RRA','fontsize',12)

subplot(1,9,6)
hold
plot(ISCHEMIA_Pre_avgwave.LRA*1000)
plot(ISCHEMIA_Post_avgwave.LRA*1000)
title('LRA','fontsize',12)

subplot(1,9,7)
hold
plot(ISCHEMIA_Pre_avgwave.SMV*1000)
plot(ISCHEMIA_Post_avgwave.SMV*1000)
title('SMV','fontsize',12)

subplot(1,9,8)
hold
plot(ISCHEMIA_Pre_avgwave.SV*1000)
plot(ISCHEMIA_Post_avgwave.SV*1000)
title('SV','fontsize',12)

subplot(1,9,9)
hold
plot(ISCHEMIA_Pre_avgwave.PV*1000)
plot(ISCHEMIA_Post_avgwave.PV*1000)
title('PV','fontsize',12)

%% Plot Negative Diagnosis
figure('NumberTitle', 'off', 'Name', 'Pulsatile Waveform - Negative Diagnosis');
subplot(1,9,1)
hold
plot(NEGATIVE_Pre_avgwave.SCAo*1000)
plot(NEGATIVE_Post_avgwave.SCAo*1000)
title('SCAo','fontsize',12)
xlabel('Cardiac Frame','fontsize',11)
ylabel('Instantaneous Flow Rate (mL/s)','fontsize',11)

subplot(1,9,2)
hold
plot(NEGATIVE_Pre_avgwave.IRAo*1000)
plot(NEGATIVE_Post_avgwave.IRAo*1000)
title('IRAo','fontsize',12)

subplot(1,9,3)
hold
plot(NEGATIVE_Pre_avgwave.CA*1000)
plot(NEGATIVE_Post_avgwave.CA*1000)
title('CA','fontsize',12)

subplot(1,9,4)
hold
plot(NEGATIVE_Pre_avgwave.SMA*1000)
plot(NEGATIVE_Post_avgwave.SMA*1000)
title('SMA','fontsize',12)

subplot(1,9,5)
hold
plot(NEGATIVE_Pre_avgwave.RRA*1000)
plot(NEGATIVE_Post_avgwave.RRA*1000)
title('RRA','fontsize',12)

subplot(1,9,6)
hold
plot(NEGATIVE_Pre_avgwave.LRA*1000)
plot(NEGATIVE_Post_avgwave.LRA*1000)
title('LRA','fontsize',12)

subplot(1,9,7)
hold
plot(NEGATIVE_Pre_avgwave.SMV*1000)
plot(NEGATIVE_Post_avgwave.SMV*1000)
title('SMV','fontsize',12)

subplot(1,9,8)
hold
plot(NEGATIVE_Pre_avgwave.SV*1000)
plot(NEGATIVE_Post_avgwave.SV*1000)
title('SV','fontsize',12)

subplot(1,9,9)
hold
plot(NEGATIVE_Pre_avgwave.PV*1000)
plot(NEGATIVE_Post_avgwave.PV*1000)
title('PV','fontsize',12)