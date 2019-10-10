addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p9_condNP_Valid');
[x,fval] = patternsearch(statMod,[98.584,25.9793,3674.1453],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p9_condNP_Valid/res/output_SecndPass_13.mat')