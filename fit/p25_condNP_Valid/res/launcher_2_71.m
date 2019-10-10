addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p25_condNP_Valid');
[x,fval] = patternsearch(statMod,[15.6063,66.8041,4970.2103],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p25_condNP_Valid/res/output_SecndPass_71.mat')