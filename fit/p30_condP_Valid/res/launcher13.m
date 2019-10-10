addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p30_condP_Valid');
[x,fval] = patternsearch(statMod,[90.9773,61.8162,4727.9214],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p30_condP_Valid/res/output_FirstPass_13.mat')
