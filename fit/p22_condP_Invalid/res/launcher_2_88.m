addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p22_condP_Invalid');
[x,fval] = patternsearch(statMod,[22.1947,11.7618,1483.5794],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p22_condP_Invalid/res/output_SecndPass_88.mat')