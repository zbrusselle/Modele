addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p31_condNP_Invalid');
[x,fval] = patternsearch(statMod,[70.5863,91.0164,1507.1503],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p31_condNP_Invalid/res/output_FirstPass_39.mat')
