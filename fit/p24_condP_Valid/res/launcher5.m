addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p24_condP_Valid');
[x,fval] = patternsearch(statMod,[56.8967,28.5767,3975.3865],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p24_condP_Valid/res/output_FirstPass_5.mat')