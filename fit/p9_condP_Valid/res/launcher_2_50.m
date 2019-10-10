addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p9_condP_Valid');
[x,fval] = patternsearch(statMod,[50.9461,19.769,2675.125],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p9_condP_Valid/res/output_SecndPass_50.mat')