addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p20_condNP_Invalid');
[x,fval] = patternsearch(statMod,[39.1811,27.1818,3945.5178],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p20_condNP_Invalid/res/output_FirstPass_11.mat')
