addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p6_condNP_Invalid');
[x,fval] = patternsearch(statMod,[76.9114,39.6792,4042.5705],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p6_condNP_Invalid/res/output_FirstPass_39.mat')
