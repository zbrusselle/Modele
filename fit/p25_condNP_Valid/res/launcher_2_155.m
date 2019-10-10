addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p25_condNP_Valid');
[x,fval] = patternsearch(statMod,[11.5472,75.823,4206.2209],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p25_condNP_Valid/res/output_SecndPass_155.mat')