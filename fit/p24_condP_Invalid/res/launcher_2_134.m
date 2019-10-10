addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p24_condP_Invalid');
[x,fval] = patternsearch(statMod,[12.1003,94.0052,4764.4942],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p24_condP_Invalid/res/output_SecndPass_134.mat')