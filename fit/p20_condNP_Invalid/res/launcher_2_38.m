addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p20_condNP_Invalid');
[x,fval] = patternsearch(statMod,[56.4275,27.5731,4066.8891],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p20_condNP_Invalid/res/output_SecndPass_38.mat')