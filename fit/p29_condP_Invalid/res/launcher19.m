addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p29_condP_Invalid');
[x,fval] = patternsearch(statMod,[22.6645,12.5419,39.0827],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p29_condP_Invalid/res/output_FirstPass_19.mat')
