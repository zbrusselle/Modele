addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p33_condNP_Invalid');
[x,fval] = patternsearch(statMod,[35.6001,68.4658,3321.2176],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p33_condNP_Invalid/res/output_FirstPass_9.mat')