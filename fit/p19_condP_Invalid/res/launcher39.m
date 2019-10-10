addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p19_condP_Invalid');
[x,fval] = patternsearch(statMod,[38.6853,44.3005,641.6357],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p19_condP_Invalid/res/output_FirstPass_39.mat')
