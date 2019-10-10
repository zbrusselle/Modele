addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p5_condNP_Valid');
[x,fval] = patternsearch(statMod,[80.445,98.6104,149.9598],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p5_condNP_Valid/res/output_FirstPass_49.mat')
