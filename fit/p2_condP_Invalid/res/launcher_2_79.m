addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p2_condP_Invalid');
[x,fval] = patternsearch(statMod,[13.4548,53.9859,4563.9239],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p2_condP_Invalid/res/output_SecndPass_79.mat')