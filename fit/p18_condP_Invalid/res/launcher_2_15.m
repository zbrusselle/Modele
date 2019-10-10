addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p18_condP_Invalid');
[x,fval] = patternsearch(statMod,[13.3358,71.6527,3269.51],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p18_condP_Invalid/res/output_SecndPass_15.mat')