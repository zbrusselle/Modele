addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p33_condNP_Valid');
[x,fval] = patternsearch(statMod,[18.6108,95.9474,4328.7278],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p33_condNP_Valid/res/output_SecndPass_98.mat')