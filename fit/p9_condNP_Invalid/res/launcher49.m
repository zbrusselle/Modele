addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p9_condNP_Invalid');
[x,fval] = patternsearch(statMod,[91.4974,23.5618,4852.2431],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p9_condNP_Invalid/res/output_FirstPass_49.mat')
