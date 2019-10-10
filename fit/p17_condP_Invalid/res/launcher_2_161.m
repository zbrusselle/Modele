addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p17_condP_Invalid');
[x,fval] = patternsearch(statMod,[24.9777,61.7566,4841.1115],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p17_condP_Invalid/res/output_SecndPass_161.mat')