addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p2_condP_Valid');
[x,fval] = patternsearch(statMod,[96.6038,18.7417,2105.4607],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p2_condP_Valid/res/output_SecndPass_104.mat')