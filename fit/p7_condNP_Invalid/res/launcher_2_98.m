addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p7_condNP_Invalid');
[x,fval] = patternsearch(statMod,[11.2086,38.4228,3505.6516],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p7_condNP_Invalid/res/output_SecndPass_98.mat')