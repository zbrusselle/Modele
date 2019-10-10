addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p2_condP_Invalid');
[x,fval] = patternsearch(statMod,[47.8486,23.478,1934.666],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p2_condP_Invalid/res/output_SecndPass_96.mat')