addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p18_condP_Valid');
[x,fval] = patternsearch(statMod,[10.7369,75.9224,3242.4891],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p18_condP_Valid/res/output_SecndPass_57.mat')