addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p3_condP_Invalid');
[x,fval] = patternsearch(statMod,[12.1932,23.4098,3046.061],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p3_condP_Invalid/res/output_SecndPass_58.mat')