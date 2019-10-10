addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p25_condNP_Invalid');
[x,fval] = patternsearch(statMod,[51.1825,8.1579,1126.4658],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p25_condNP_Invalid/res/output_FirstPass_48.mat')
