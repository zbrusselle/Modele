addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p9_condP_Invalid');
[x,fval] = patternsearch(statMod,[6.1219,27.0738,1611.9425],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p9_condP_Invalid/res/output_SecndPass_182.mat')