addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p22_condNP_Invalid');
[x,fval] = patternsearch(statMod,[97.3801,79.4582,4838.4075],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p22_condNP_Invalid/res/output_FirstPass_25.mat')
