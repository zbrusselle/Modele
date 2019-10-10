addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p20_condNP_Invalid');
[x,fval] = patternsearch(statMod,[80.1231,15.4831,47.243],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p20_condNP_Invalid/res/output_FirstPass_32.mat')
