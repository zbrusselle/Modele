addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p7_condNP_Invalid');
[x,fval] = patternsearch(statMod,[9.6299,20.5115,2844.0312],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p7_condNP_Invalid/res/output_SecndPass_94.mat')