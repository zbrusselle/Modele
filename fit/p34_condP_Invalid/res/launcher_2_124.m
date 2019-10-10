addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p34_condP_Invalid');
[x,fval] = patternsearch(statMod,[4.7637,86.8192,2236.8943],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p34_condP_Invalid/res/output_SecndPass_124.mat')