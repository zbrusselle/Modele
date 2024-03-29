addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p19_condNP_Invalid');
[x,fval] = patternsearch(statMod,[5.7352,85.8505,297.822],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p19_condNP_Invalid/res/output_FirstPass_35.mat')
   