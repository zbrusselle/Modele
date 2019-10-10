addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p7_condNP_Valid');
[x,fval] = patternsearch(statMod,[4.9733,79.977,2787.252],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p7_condNP_Valid/res/output_SecndPass_32.mat')