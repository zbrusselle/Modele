addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p9_condNP_Valid');
[x,fval] = patternsearch(statMod,[95.7099,82.0847,2497.4237],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p9_condNP_Valid/res/output_FirstPass_9.mat')
