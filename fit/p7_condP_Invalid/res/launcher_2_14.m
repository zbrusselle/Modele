addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p7_condP_Invalid');
[x,fval] = patternsearch(statMod,[94.4974,20.8735,3546.2085],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p7_condP_Invalid/res/output_SecndPass_14.mat')