addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p22_condP_Invalid');
[x,fval] = patternsearch(statMod,[7.1003,44.4209,3021.7214],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p22_condP_Invalid/res/output_SecndPass_57.mat')