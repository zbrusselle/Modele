addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p5_condP_Invalid');
[x,fval] = patternsearch(statMod,[9.2921,84.5669,2933.6012],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p5_condP_Invalid/res/output_SecndPass_50.mat')