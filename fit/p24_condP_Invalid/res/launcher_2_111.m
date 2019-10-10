addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p24_condP_Invalid');
[x,fval] = patternsearch(statMod,[11.8949,84.4439,4718.1286],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p24_condP_Invalid/res/output_SecndPass_111.mat')