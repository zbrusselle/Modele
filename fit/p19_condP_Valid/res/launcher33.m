addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p19_condP_Valid');
[x,fval] = patternsearch(statMod,[61.6135,77.4932,4796.7892],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p19_condP_Valid/res/output_FirstPass_33.mat')
