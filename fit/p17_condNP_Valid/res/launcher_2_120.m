addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p17_condNP_Valid');
[x,fval] = patternsearch(statMod,[70.0088,63.8731,168.2192],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p17_condNP_Valid/res/output_SecndPass_120.mat')