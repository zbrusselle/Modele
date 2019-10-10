addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p14_condP_Valid');
[x,fval] = patternsearch(statMod,[71.758,18.7599,1067.7814],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p14_condP_Valid/res/output_FirstPass_12.mat')
