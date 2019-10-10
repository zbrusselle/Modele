addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p31_condP_Invalid');
[x,fval] = patternsearch(statMod,[56.812,55.2782,3629.2636],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p31_condP_Invalid/res/output_FirstPass_38.mat')
