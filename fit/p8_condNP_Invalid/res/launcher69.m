addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p8_condNP_Invalid');
[x,fval] = patternsearch(statMod,[87.4367,21.1065,3374.3834],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p8_condNP_Invalid/res/output_SecndPass_69.mat')