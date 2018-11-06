%% Get standard deviation

NEGATIVE_Pre_avgwave.SCAo = mean(cell2mat([NEGATIVE_pre_waveform.SCAo(:,(3:16))]));
NEGATIVE_Pre_avgwave.IRAo = mean(cell2mat([NEGATIVE_pre_waveform.IRAo(:,(3:16))]));
NEGATIVE_Pre_avgwave.LRA = mean(cell2mat([NEGATIVE_pre_waveform.LRA(:,(3:16))]));
NEGATIVE_Pre_avgwave.RRA = mean(cell2mat([NEGATIVE_pre_waveform.RRA(:,(3:16))]));
NEGATIVE_Pre_avgwave.SMA = mean(cell2mat([NEGATIVE_pre_waveform.SMA(:,(3:16))]));
NEGATIVE_Pre_avgwave.CA = mean(cell2mat([NEGATIVE_pre_waveform.CA(:,(3:16))]));
NEGATIVE_Pre_avgwave.SMV = mean(cell2mat([NEGATIVE_pre_waveform.SMV(:,(3:16))]));
NEGATIVE_Pre_avgwave.SV = mean(cell2mat([NEGATIVE_pre_waveform.SV(:,(3:16))]));
NEGATIVE_Pre_avgwave.PV = mean(cell2mat([NEGATIVE_pre_waveform.PV(:,(3:16))]));

NEGATIVE_Post_avgwave.SCAo = mean(cell2mat([NEGATIVE_post_waveform.SCAo(:,(3:16))]));
NEGATIVE_Post_avgwave.IRAo = mean(cell2mat([NEGATIVE_post_waveform.IRAo(:,(3:16))]));
NEGATIVE_Post_avgwave.LRA = mean(cell2mat([NEGATIVE_post_waveform.LRA(:,(3:16))]));
NEGATIVE_Post_avgwave.RRA = mean(cell2mat([NEGATIVE_post_waveform.RRA(:,(3:16))]));
NEGATIVE_Post_avgwave.SMA = mean(cell2mat([NEGATIVE_post_waveform.SMA(:,(3:16))]));
NEGATIVE_Post_avgwave.CA = mean(cell2mat([NEGATIVE_post_waveform.CA(:,(3:16))]));
NEGATIVE_Post_avgwave.SMV = mean(cell2mat([NEGATIVE_post_waveform.SMV(:,(3:16))]));
NEGATIVE_Post_avgwave.SV = mean(cell2mat([NEGATIVE_post_waveform.SV(:,(3:16))]));
NEGATIVE_Post_avgwave.PV = mean(cell2mat([NEGATIVE_post_waveform.PV(:,(3:16))]));



NEGATIVE_Pre_std.SCAo = std(cell2mat([NEGATIVE_pre_waveform.SCAo(:,(3:16))]));
NEGATIVE_Pre_std.IRAo = std(cell2mat([NEGATIVE_pre_waveform.IRAo(:,(3:16))]));
NEGATIVE_Pre_std.LRA = std(cell2mat([NEGATIVE_pre_waveform.LRA(:,(3:16))]));
NEGATIVE_Pre_std.RRA = std(cell2mat([NEGATIVE_pre_waveform.RRA(:,(3:16))]));
NEGATIVE_Pre_std.SMA = std(cell2mat([NEGATIVE_pre_waveform.SMA(:,(3:16))]));
NEGATIVE_Pre_std.CA = std(cell2mat([NEGATIVE_pre_waveform.CA(:,(3:16))]));
NEGATIVE_Pre_std.SMV = std(cell2mat([NEGATIVE_pre_waveform.SMV(:,(3:16))]));
NEGATIVE_Pre_std.SV = std(cell2mat([NEGATIVE_pre_waveform.SV(:,(3:16))]));
NEGATIVE_Pre_std.PV = std(cell2mat([NEGATIVE_pre_waveform.PV(:,(3:16))]));

NEGATIVE_Post_std.SCAo = std(cell2mat([NEGATIVE_post_waveform.SCAo(:,(3:16))]));
NEGATIVE_Post_std.IRAo = std(cell2mat([NEGATIVE_post_waveform.IRAo(:,(3:16))]));
NEGATIVE_Post_std.LRA = std(cell2mat([NEGATIVE_post_waveform.LRA(:,(3:16))]));
NEGATIVE_Post_std.RRA = std(cell2mat([NEGATIVE_post_waveform.RRA(:,(3:16))]));
NEGATIVE_Post_std.SMA = std(cell2mat([NEGATIVE_post_waveform.SMA(:,(3:16))]));
NEGATIVE_Post_std.CA = std(cell2mat([NEGATIVE_post_waveform.CA(:,(3:16))]));
NEGATIVE_Post_std.SMV = std(cell2mat([NEGATIVE_post_waveform.SMV(:,(3:16))]));
NEGATIVE_Post_std.SV = std(cell2mat([NEGATIVE_post_waveform.SV(:,(3:16))]));
NEGATIVE_Post_std.PV = std(cell2mat([NEGATIVE_post_waveform.PV(:,(3:16))]));