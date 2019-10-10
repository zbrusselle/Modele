addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p6_condP_Invalid');
[x,fval] = patternsearch(statMod,[12.6761,85.3298,4350.5262],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p6_condP_Invalid/res/output_SecndPass_59.mat')