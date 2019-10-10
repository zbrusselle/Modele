addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p34_condNP_Invalid');
[x,fval] = patternsearch(statMod,[90.6829,40.9981,2838.1352],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p34_condNP_Invalid/res/output_FirstPass_31.mat')
