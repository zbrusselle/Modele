addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p3_condNP_Valid');
[x,fval] = patternsearch(statMod,[40.2388,98.2835,2010.9199],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p3_condNP_Valid/res/output_FirstPass_3.mat')
