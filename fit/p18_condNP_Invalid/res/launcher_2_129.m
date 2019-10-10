addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p18_condNP_Invalid');
[x,fval] = patternsearch(statMod,[61.2679,82.1642,1551.2426],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p18_condNP_Invalid/res/output_SecndPass_129.mat')