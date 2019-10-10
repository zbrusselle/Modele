addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p6_condNP_Invalid');
[x,fval] = patternsearch(statMod,[39.0695,3.4356,1524.97],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p6_condNP_Invalid/res/output_SecndPass_99.mat')