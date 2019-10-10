addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p24_condNP_Valid');
[x,fval] = patternsearch(statMod,[9.6699,64.676,4163.7668],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p24_condNP_Valid/res/output_SecndPass_5.mat')