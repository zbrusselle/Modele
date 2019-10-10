addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p18_condP_Valid');
[x,fval] = patternsearch(statMod,[81.467,26.1072,3388.3373],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p18_condP_Valid/res/output_FirstPass_19.mat')