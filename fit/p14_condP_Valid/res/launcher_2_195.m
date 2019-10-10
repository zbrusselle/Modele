addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p14_condP_Valid');
[x,fval] = patternsearch(statMod,[3.5812,60.9541,1598.5662],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p14_condP_Valid/res/output_SecndPass_195.mat')