addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p28_condP_Invalid');
[x,fval] = patternsearch(statMod,[71.9306,5.0369,1275.7259],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p28_condP_Invalid/res/output_SecndPass_197.mat')