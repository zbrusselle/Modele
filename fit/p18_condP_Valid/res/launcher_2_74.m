addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p18_condP_Valid');
[x,fval] = patternsearch(statMod,[9.7745,33.1071,2676.4499],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p18_condP_Valid/res/output_SecndPass_74.mat')