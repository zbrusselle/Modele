addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p30_condNP_Valid');
[x,fval] = patternsearch(statMod,[1.4393,87.153,2025.5602],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p30_condNP_Valid/res/output_SecndPass_21.mat')