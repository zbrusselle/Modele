addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p19_condNP_Valid');
[x,fval] = patternsearch(statMod,[78.5225,23.1407,2870.2159],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p19_condNP_Valid/res/output_FirstPass_21.mat')
