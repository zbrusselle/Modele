addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p2_condP_Invalid');
[x,fval] = patternsearch(statMod,[43.607,17.7529,857.9343],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p2_condP_Invalid/res/output_SecndPass_12.mat')