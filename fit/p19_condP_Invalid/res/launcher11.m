addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p19_condP_Invalid');
[x,fval] = patternsearch(statMod,[51.7083,65.6916,2378.1585],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p19_condP_Invalid/res/output_FirstPass_11.mat')
