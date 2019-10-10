addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p31_condNP_Invalid');
[x,fval] = patternsearch(statMod,[4.5376,59.7105,2370.1688],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p31_condNP_Invalid/res/output_FirstPass_50.mat')