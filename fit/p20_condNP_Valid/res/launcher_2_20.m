addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p20_condNP_Valid');
[x,fval] = patternsearch(statMod,[16.2147,64.6788,4938.7673],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p20_condNP_Valid/res/output_SecndPass_20.mat')