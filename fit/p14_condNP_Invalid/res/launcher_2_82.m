addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p14_condNP_Invalid');
[x,fval] = patternsearch(statMod,[9.362,44.5204,2139.5211],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p14_condNP_Invalid/res/output_SecndPass_82.mat')