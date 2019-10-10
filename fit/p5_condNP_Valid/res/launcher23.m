addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p5_condNP_Valid');
[x,fval] = patternsearch(statMod,[39.8881,41.5093,903.6888],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p5_condNP_Valid/res/output_FirstPass_23.mat')
