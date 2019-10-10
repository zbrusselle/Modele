addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p8_condNP_Invalid');
[x,fval] = patternsearch(statMod,[10.2464,47.0979,4048.9464],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p8_condNP_Invalid/res/output_SecndPass_43.mat')