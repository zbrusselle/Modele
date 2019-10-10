addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p9_condNP_Invalid');
[x,fval] = patternsearch(statMod,[4.2982,97.8225,2145.9856],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p9_condNP_Invalid/res/output_SecndPass_115.mat')