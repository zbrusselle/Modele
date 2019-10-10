addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p5_condNP_Invalid');
[x,fval] = patternsearch(statMod,[16.4831,44.7919,3873.2632],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p5_condNP_Invalid/res/output_SecndPass_106.mat')