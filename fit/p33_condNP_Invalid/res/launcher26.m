addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p33_condNP_Invalid');
[x,fval] = patternsearch(statMod,[74.7487,78.6863,143.6573],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p33_condNP_Invalid/res/output_FirstPass_26.mat')
