addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p3_condP_Invalid');
[x,fval] = patternsearch(statMod,[92.4749,50.7528,2372.2834],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p3_condP_Invalid/res/output_SecndPass_170.mat')