addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p30_condP_Valid');
[x,fval] = patternsearch(statMod,[12.3219,46.3808,4174.6626],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p30_condP_Valid/res/output_SecndPass_181.mat')