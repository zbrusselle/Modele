addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p34_condP_Valid');
[x,fval] = patternsearch(statMod,[13.5959,70.4192,4050.4229],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p34_condP_Valid/res/output_SecndPass_161.mat')