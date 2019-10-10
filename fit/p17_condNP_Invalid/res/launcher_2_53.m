addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p17_condNP_Invalid');
[x,fval] = patternsearch(statMod,[22.2116,64.7211,4783.3297],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p17_condNP_Invalid/res/output_SecndPass_53.mat')