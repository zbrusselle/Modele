addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p24_condNP_Valid');
[x,fval] = patternsearch(statMod,[10.7814,67.888,4791.4053],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p24_condNP_Valid/res/output_SecndPass_50.mat')