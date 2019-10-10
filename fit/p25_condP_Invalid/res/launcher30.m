addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p25_condP_Invalid');
[x,fval] = patternsearch(statMod,[38.7007,95.5155,4662.8829],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p25_condP_Invalid/res/output_FirstPass_30.mat')
