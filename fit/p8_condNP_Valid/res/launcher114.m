addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p8_condNP_Valid');
[x,fval] = patternsearch(statMod,[4.868,89.9443,2820.3428],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p8_condNP_Valid/res/output_SecndPass_114.mat')