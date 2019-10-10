addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p18_condNP_Invalid');
[x,fval] = patternsearch(statMod,[37.0777,71.8691,336.4893],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p18_condNP_Invalid/res/output_SecndPass_8.mat')