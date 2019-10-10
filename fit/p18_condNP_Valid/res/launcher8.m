addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p18_condNP_Valid');
[x,fval] = patternsearch(statMod,[83.8352,31.8514,3971.9014],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p18_condNP_Valid/res/output_FirstPass_8.mat')
