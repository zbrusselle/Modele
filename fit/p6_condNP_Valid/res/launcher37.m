addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p6_condNP_Valid');
[x,fval] = patternsearch(statMod,[6.8806,31.96,2654.3214],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p6_condNP_Valid/res/output_FirstPass_37.mat')
