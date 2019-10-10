addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p14_condNP_Valid');
[x,fval] = patternsearch(statMod,[36.4241,7.5845,4104.5808],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p14_condNP_Valid/res/output_FirstPass_40.mat')