addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p30_condNP_Invalid');
[x,fval] = patternsearch(statMod,[16.266,62.2224,4925.1079],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p30_condNP_Invalid/res/output_SecndPass_30.mat')