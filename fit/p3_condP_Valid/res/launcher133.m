addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p3_condP_Valid');
[x,fval] = patternsearch(statMod,[4.3138,58.9251,1552.6673],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p3_condP_Valid/res/output_SecndPass_133.mat')