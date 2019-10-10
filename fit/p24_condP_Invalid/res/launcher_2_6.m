addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p24_condP_Invalid');
[x,fval] = patternsearch(statMod,[9.1522,97.7546,4269.9185],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p24_condP_Invalid/res/output_SecndPass_6.mat')