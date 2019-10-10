addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p19_condP_Valid');
[x,fval] = patternsearch(statMod,[50.5828,52.5616,1404.912],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p19_condP_Valid/res/output_FirstPass_17.mat')
