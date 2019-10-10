addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p7_condP_Invalid');
[x,fval] = patternsearch(statMod,[78.9963,31.8524,2670.3206],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p7_condP_Invalid/res/output_FirstPass_47.mat')
