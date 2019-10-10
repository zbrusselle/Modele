addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p14_condP_Valid');
[x,fval] = patternsearch(statMod,[41.0138,60.7866,4328.7371],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p14_condP_Valid/res/output_FirstPass_18.mat')