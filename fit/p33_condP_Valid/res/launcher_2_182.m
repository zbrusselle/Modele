addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p33_condP_Valid');
[x,fval] = patternsearch(statMod,[12.3119,74.3708,3243.5626],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p33_condP_Valid/res/output_SecndPass_182.mat')