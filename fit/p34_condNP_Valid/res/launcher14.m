addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p34_condNP_Valid');
[x,fval] = patternsearch(statMod,[12.4677,64.6922,568.0425],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p34_condNP_Valid/res/output_FirstPass_14.mat')
