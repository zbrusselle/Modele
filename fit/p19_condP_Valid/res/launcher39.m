addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p19_condP_Valid');
[x,fval] = patternsearch(statMod,[93.877,35.7266,3322.203],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p19_condP_Valid/res/output_FirstPass_39.mat')
