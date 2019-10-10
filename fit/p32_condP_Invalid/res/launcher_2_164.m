addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p32_condP_Invalid');
[x,fval] = patternsearch(statMod,[12.9989,93.7866,3529.1615],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p32_condP_Invalid/res/output_SecndPass_164.mat')