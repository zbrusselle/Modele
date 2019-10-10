addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p7_condP_Valid');
[x,fval] = patternsearch(statMod,[84.7037,77.7172,1331.3449],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p7_condP_Valid/res/output_SecndPass_134.mat')