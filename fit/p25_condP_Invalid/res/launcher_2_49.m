addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p25_condP_Invalid');
[x,fval] = patternsearch(statMod,[55.0056,62.2375,2935.1235],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p25_condP_Invalid/res/output_SecndPass_49.mat')