addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p2_condNP_Invalid');
[x,fval] = patternsearch(statMod,[98.309,31.285,2192.4283],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p2_condNP_Invalid/res/output_SecndPass_186.mat')