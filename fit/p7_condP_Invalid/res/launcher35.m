addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p7_condP_Invalid');
[x,fval] = patternsearch(statMod,[68.3416,70.4047,2211.5271],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p7_condP_Invalid/res/output_FirstPass_35.mat')
