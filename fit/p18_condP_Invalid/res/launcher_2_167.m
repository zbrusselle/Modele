addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p18_condP_Invalid');
[x,fval] = patternsearch(statMod,[20.1666,87.4987,4889.4937],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p18_condP_Invalid/res/output_SecndPass_167.mat')