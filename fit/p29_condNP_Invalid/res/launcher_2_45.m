addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p29_condNP_Invalid');
[x,fval] = patternsearch(statMod,[11.7439,54.6806,2830.2718],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p29_condNP_Invalid/res/output_SecndPass_45.mat')