addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p19_condP_Invalid');
[x,fval] = patternsearch(statMod,[19.4013,59.5381,1208.161],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p19_condP_Invalid/res/output_FirstPass_32.mat')
