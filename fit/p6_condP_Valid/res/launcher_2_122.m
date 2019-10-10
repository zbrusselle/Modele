addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p6_condP_Valid');
[x,fval] = patternsearch(statMod,[32.4537,4.2045,1982.5925],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p6_condP_Valid/res/output_SecndPass_122.mat')