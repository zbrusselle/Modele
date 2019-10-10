addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p5_condP_Valid');
[x,fval] = patternsearch(statMod,[5.1178,21.7468,1505.3894],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p5_condP_Valid/res/output_SecndPass_187.mat')