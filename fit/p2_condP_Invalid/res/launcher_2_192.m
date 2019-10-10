addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p2_condP_Invalid');
[x,fval] = patternsearch(statMod,[45.3635,43.2545,1605.3624],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p2_condP_Invalid/res/output_SecndPass_192.mat')