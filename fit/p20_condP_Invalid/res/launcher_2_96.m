addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p20_condP_Invalid');
[x,fval] = patternsearch(statMod,[2.175,93.1994,1809.5719],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p20_condP_Invalid/res/output_SecndPass_96.mat')