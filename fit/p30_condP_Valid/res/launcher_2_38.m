addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p30_condP_Valid');
[x,fval] = patternsearch(statMod,[5.9503,92.4898,3052.8587],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p30_condP_Valid/res/output_SecndPass_38.mat')