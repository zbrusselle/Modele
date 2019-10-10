addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p24_condP_Invalid');
[x,fval] = patternsearch(statMod,[9.8165,96.882,3998.5804],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p24_condP_Invalid/res/output_SecndPass_79.mat')