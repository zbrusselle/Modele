addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p3_condNP_Valid');
[x,fval] = patternsearch(statMod,[97.7489,46.1002,1996.4996],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p3_condNP_Valid/res/output_SecndPass_157.mat')