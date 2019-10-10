addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p31_condNP_Valid');
[x,fval] = patternsearch(statMod,[6.4819,62.3186,2283.2306],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p31_condNP_Valid/res/output_SecndPass_80.mat')