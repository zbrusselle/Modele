addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p7_condNP_Invalid');
[x,fval] = patternsearch(statMod,[13.1252,79.2785,4410.5373],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p7_condNP_Invalid/res/output_SecndPass_29.mat')