addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p2_condNP_Invalid');
[x,fval] = patternsearch(statMod,[92.7169,3.2455,3321.8895],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p2_condNP_Invalid/res/output_SecndPass_110.mat')