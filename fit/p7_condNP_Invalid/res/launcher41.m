addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p7_condNP_Invalid');
[x,fval] = patternsearch(statMod,[9.2352,0.78203,2115.5469],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p7_condNP_Invalid/res/output_FirstPass_41.mat')
