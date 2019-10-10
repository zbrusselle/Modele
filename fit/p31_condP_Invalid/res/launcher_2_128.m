addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p31_condP_Invalid');
[x,fval] = patternsearch(statMod,[24.5368,91.3487,4493.1194],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p31_condP_Invalid/res/output_SecndPass_128.mat')