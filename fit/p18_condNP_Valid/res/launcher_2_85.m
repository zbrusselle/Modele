addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p18_condNP_Valid');
[x,fval] = patternsearch(statMod,[56.0922,98.9147,1276.3829],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p18_condNP_Valid/res/output_SecndPass_85.mat')