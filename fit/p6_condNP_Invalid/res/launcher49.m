addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p6_condNP_Invalid');
[x,fval] = patternsearch(statMod,[67.8652,49.5177,948.552],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p6_condNP_Invalid/res/output_FirstPass_49.mat')
