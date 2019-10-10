addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p30_condNP_Invalid');
[x,fval] = patternsearch(statMod,[41.7876,59.595,3100.5798],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p30_condNP_Invalid/res/output_FirstPass_23.mat')
