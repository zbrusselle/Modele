addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p30_condP_Invalid');
[x,fval] = patternsearch(statMod,[5.8709,81.168,2424.2279],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p30_condP_Invalid/res/output_SecndPass_39.mat')