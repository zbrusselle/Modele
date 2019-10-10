addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p7_condNP_Invalid');
[x,fval] = patternsearch(statMod,[9.6699,20.5515,2844.4312],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p7_condNP_Invalid/res/output_SecndPass_96.mat')