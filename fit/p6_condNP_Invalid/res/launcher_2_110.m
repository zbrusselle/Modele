addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p6_condNP_Invalid');
[x,fval] = patternsearch(statMod,[13.8312,61.5854,4369.4274],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p6_condNP_Invalid/res/output_SecndPass_110.mat')