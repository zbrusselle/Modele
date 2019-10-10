addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p14_condP_Invalid');
[x,fval] = patternsearch(statMod,[3.0827,93.9102,1883.8141],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p14_condP_Invalid/res/output_SecndPass_43.mat')