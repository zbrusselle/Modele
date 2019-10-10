addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p31_condNP_Valid');
[x,fval] = patternsearch(statMod,[51.8979,75.5216,2932.5053],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p31_condNP_Valid/res/output_FirstPass_14.mat')
