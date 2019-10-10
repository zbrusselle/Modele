addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p31_condNP_Invalid');
[x,fval] = patternsearch(statMod,[13.94,27.2749,3007.6043],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p31_condNP_Invalid/res/output_SecndPass_73.mat')