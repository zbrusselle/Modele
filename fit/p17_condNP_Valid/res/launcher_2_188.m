addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p17_condNP_Valid');
[x,fval] = patternsearch(statMod,[13.3998,75.1967,3102.769],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p17_condNP_Valid/res/output_SecndPass_188.mat')