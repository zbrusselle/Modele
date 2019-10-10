addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p3_condNP_Invalid');
[x,fval] = patternsearch(statMod,[19.7752,46.4489,4566.0445],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p3_condNP_Invalid/res/output_SecndPass_23.mat')