addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p25_condNP_Invalid');
[x,fval] = patternsearch(statMod,[47.3386,15.2621,1705.523],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p25_condNP_Invalid/res/output_SecndPass_21.mat')