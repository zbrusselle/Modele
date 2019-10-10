addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p8_condNP_Valid');
[x,fval] = patternsearch(statMod,[85.3818,21.9356,4138.5143],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p8_condNP_Valid/res/output_SecndPass_136.mat')