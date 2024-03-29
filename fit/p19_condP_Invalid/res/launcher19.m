addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p19_condP_Invalid');
[x,fval] = patternsearch(statMod,[8.5518,75.2602,3797.4921],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p19_condP_Invalid/res/output_FirstPass_19.mat')
 