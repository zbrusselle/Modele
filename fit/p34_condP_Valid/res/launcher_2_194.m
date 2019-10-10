addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p34_condP_Valid');
[x,fval] = patternsearch(statMod,[3.5512,76.8929,2109.7662],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p34_condP_Valid/res/output_SecndPass_194.mat')