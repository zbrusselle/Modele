addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p30_condP_Invalid');
[x,fval] = patternsearch(statMod,[42.8481,54.8481,2570.701],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p30_condP_Invalid/res/output_FirstPass_27.mat')
