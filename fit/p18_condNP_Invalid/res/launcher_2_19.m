addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p18_condNP_Invalid');
[x,fval] = patternsearch(statMod,[59.2084,12.6985,4407.879],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p18_condNP_Invalid/res/output_SecndPass_19.mat')