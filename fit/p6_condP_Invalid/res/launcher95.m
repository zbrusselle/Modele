addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p6_condP_Invalid');
[x,fval] = patternsearch(statMod,[3.7412,85.8694,2504.5109],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p6_condP_Invalid/res/output_SecndPass_95.mat')