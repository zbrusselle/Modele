addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p18_condNP_Invalid');
[x,fval] = patternsearch(statMod,[16.1266,43.4094,3672.1836],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p18_condNP_Invalid/res/output_SecndPass_51.mat')