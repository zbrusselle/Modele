addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p28_condP_Valid');
[x,fval] = patternsearch(statMod,[13.4399,57.9332,3403.8308],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p28_condP_Valid/res/output_SecndPass_26.mat')