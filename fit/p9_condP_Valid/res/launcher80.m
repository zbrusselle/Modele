addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p9_condP_Valid');
[x,fval] = patternsearch(statMod,[53.164,2.5331,3353.0018],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p9_condP_Valid/res/output_SecndPass_80.mat')