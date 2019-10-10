addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p25_condNP_Invalid');
[x,fval] = patternsearch(statMod,[10.4149,95.1029,3850.5986],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p25_condNP_Invalid/res/output_SecndPass_10.mat')