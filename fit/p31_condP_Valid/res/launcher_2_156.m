addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p31_condP_Valid');
[x,fval] = patternsearch(statMod,[92.4835,37.2827,572.9906],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p31_condP_Valid/res/output_SecndPass_156.mat')