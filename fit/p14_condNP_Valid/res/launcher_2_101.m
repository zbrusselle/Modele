addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p14_condNP_Valid');
[x,fval] = patternsearch(statMod,[10.0706,91.4256,3184.463],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p14_condNP_Valid/res/output_SecndPass_101.mat')