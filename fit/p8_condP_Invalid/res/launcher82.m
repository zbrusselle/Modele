addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p8_condP_Invalid');
[x,fval] = patternsearch(statMod,[54.324,53.8694,3443.6746],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p8_condP_Invalid/res/output_SecndPass_82.mat')