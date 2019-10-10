addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p7_condP_Valid');
[x,fval] = patternsearch(statMod,[6.0523,12.9113,2034.4665],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p7_condP_Valid/res/output_SecndPass_180.mat')