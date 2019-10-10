addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p14_condNP_Invalid');
[x,fval] = patternsearch(statMod,[49.5206,14.7808,275.0707],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p14_condNP_Invalid/res/output_SecndPass_184.mat')