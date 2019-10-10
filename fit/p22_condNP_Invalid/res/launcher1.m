addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p22_condNP_Invalid');
[x,fval] = patternsearch(statMod,[29.9165,42.8392,1768.3229],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p22_condNP_Invalid/res/output_FirstPass_1.mat')
