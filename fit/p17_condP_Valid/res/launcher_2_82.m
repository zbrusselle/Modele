addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p17_condP_Valid');
[x,fval] = patternsearch(statMod,[6.3405,66.3446,1867.0752],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p17_condP_Valid/res/output_SecndPass_82.mat')