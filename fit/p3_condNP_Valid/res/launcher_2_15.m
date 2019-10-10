addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p3_condNP_Valid');
[x,fval] = patternsearch(statMod,[52.0687,82.2983,173.4702],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p3_condNP_Valid/res/output_SecndPass_15.mat')