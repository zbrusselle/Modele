addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p29_condNP_Valid');
[x,fval] = patternsearch(statMod,[91.6516,83.1683,289.7942],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p29_condNP_Valid/res/output_FirstPass_12.mat')
