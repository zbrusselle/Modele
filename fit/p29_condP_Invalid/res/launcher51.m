addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p29_condP_Invalid');
[x,fval] = patternsearch(statMod,[20.9988,81.854,4832.5474],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p29_condP_Invalid/res/output_SecndPass_51.mat')