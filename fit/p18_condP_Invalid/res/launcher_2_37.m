addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p18_condP_Invalid');
[x,fval] = patternsearch(statMod,[10.1044,37.7692,2258.2761],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p18_condP_Invalid/res/output_SecndPass_37.mat')