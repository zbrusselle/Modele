addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p25_condNP_Invalid');
[x,fval] = patternsearch(statMod,[15.0597,54.1841,2611.2132],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p25_condNP_Invalid/res/output_FirstPass_22.mat')
