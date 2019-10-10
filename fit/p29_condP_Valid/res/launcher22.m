addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p29_condP_Valid');
[x,fval] = patternsearch(statMod,[47.8365,16.2337,362.2072],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p29_condP_Valid/res/output_FirstPass_22.mat')
