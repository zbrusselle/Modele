addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p22_condNP_Valid');
[x,fval] = patternsearch(statMod,[2.9365,82.9383,2356.7749],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p22_condNP_Valid/res/output_SecndPass_60.mat')