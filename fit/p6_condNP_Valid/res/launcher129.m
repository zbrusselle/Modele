addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p6_condNP_Valid');
[x,fval] = patternsearch(statMod,[6.8637,59.0937,2508.3435],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p6_condNP_Valid/res/output_SecndPass_129.mat')