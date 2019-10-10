addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p25_condP_Valid');
[x,fval] = patternsearch(statMod,[91.7394,28.6039,3786.2011],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p25_condP_Valid/res/output_SecndPass_88.mat')