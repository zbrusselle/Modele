addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p3_condP_Valid');
[x,fval] = patternsearch(statMod,[1.4954,84.8194,1547.721],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p3_condP_Valid/res/output_SecndPass_74.mat')