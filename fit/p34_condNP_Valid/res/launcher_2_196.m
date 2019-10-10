addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p34_condNP_Valid');
[x,fval] = patternsearch(statMod,[7.1138,55.1268,2481.022],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p34_condNP_Valid/res/output_SecndPass_196.mat')