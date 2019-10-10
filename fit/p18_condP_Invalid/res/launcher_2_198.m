addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p18_condP_Invalid');
[x,fval] = patternsearch(statMod,[58.6587,95.1641,202.2042],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p18_condP_Invalid/res/output_SecndPass_198.mat')