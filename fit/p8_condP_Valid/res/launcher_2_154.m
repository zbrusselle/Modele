addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p8_condP_Valid');
[x,fval] = patternsearch(statMod,[5.9275,76.3049,2758.2755],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p8_condP_Valid/res/output_SecndPass_154.mat')