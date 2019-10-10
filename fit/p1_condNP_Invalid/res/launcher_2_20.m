addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p1_condNP_Invalid');
[x,fval] = patternsearch(statMod,[6.8777,65.4665,2519.2682],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p1_condNP_Invalid/res/output_SecndPass_20.mat')