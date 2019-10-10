addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p28_condNP_Invalid');
[x,fval] = patternsearch(statMod,[45.1611,39.7007,1767.9371],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p28_condNP_Invalid/res/output_FirstPass_14.mat')