addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p24_condNP_Valid');
[x,fval] = patternsearch(statMod,[6.8706,64.0594,3230.2214],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p24_condNP_Valid/res/output_SecndPass_121.mat')