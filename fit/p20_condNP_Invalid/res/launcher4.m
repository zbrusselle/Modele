addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p20_condNP_Invalid');
[x,fval] = patternsearch(statMod,[95.3676,9.8534,2790.3427],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p20_condNP_Invalid/res/output_FirstPass_4.mat')
