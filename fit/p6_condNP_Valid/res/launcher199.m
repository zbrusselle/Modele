addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p6_condNP_Valid');
[x,fval] = patternsearch(statMod,[12.1924,43.5182,3827.9802],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p6_condNP_Valid/res/output_SecndPass_199.mat')