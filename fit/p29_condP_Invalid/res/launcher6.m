addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p29_condP_Invalid');
[x,fval] = patternsearch(statMod,[56.7024,95.9612,1264.2637],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p29_condP_Invalid/res/output_FirstPass_6.mat')
