addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p20_condNP_Valid');
[x,fval] = patternsearch(statMod,[8.2303,86.4525,2907.3297],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p20_condNP_Valid/res/output_SecndPass_78.mat')