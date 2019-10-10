addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p30_condP_Invalid');
[x,fval] = patternsearch(statMod,[9.8812,97.6971,3724.8842],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p30_condP_Invalid/res/output_SecndPass_131.mat')