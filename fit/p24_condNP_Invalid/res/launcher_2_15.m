addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p24_condNP_Invalid');
[x,fval] = patternsearch(statMod,[0.2572,78.4839,1780.8858],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p24_condNP_Invalid/res/output_SecndPass_15.mat')