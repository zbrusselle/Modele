addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p3_condP_Valid');
[x,fval] = patternsearch(statMod,[18.9072,4.2652,3175.9896],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p3_condP_Valid/res/output_FirstPass_18.mat')
