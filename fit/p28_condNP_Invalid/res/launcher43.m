addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p28_condNP_Invalid');
[x,fval] = patternsearch(statMod,[89.0098,64.1962,979.8023],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p28_condNP_Invalid/res/output_FirstPass_43.mat')
