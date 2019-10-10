addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p14_condNP_Invalid');
[x,fval] = patternsearch(statMod,[99.0072,51.4623,4421.6051],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p14_condNP_Invalid/res/output_SecndPass_156.mat')