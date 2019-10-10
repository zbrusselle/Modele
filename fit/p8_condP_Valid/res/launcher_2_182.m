addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p8_condP_Valid');
[x,fval] = patternsearch(statMod,[6.1361,17.4383,2170.4021],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p8_condP_Valid/res/output_SecndPass_182.mat')