addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p24_condP_Valid');
[x,fval] = patternsearch(statMod,[4.1521,42.8944,1897.9923],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p24_condP_Valid/res/output_SecndPass_24.mat')