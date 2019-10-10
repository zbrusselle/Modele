addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p25_condNP_Valid');
[x,fval] = patternsearch(statMod,[36.2188,95.8931,3202.347],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p25_condNP_Valid/res/output_FirstPass_8.mat')
