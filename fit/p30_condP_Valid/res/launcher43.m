addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p30_condP_Valid');
[x,fval] = patternsearch(statMod,[99.2124,69.6346,395.9206],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p30_condP_Valid/res/output_FirstPass_43.mat')
