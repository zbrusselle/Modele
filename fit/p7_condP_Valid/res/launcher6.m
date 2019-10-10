addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p7_condP_Valid');
[x,fval] = patternsearch(statMod,[45.3798,43.2392,4126.569],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p7_condP_Valid/res/output_FirstPass_6.mat')