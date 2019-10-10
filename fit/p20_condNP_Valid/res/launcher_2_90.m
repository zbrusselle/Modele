addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p20_condNP_Valid');
[x,fval] = patternsearch(statMod,[59.1557,21.2965,2824.2533],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p20_condNP_Valid/res/output_SecndPass_90.mat')