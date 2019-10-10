addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p31_condNP_Invalid');
[x,fval] = patternsearch(statMod,[12.9751,79.1506,2729.2627],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p31_condNP_Invalid/res/output_SecndPass_170.mat')