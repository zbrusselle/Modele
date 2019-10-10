addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p2_condP_Valid');
[x,fval] = patternsearch(statMod,[27.6337,30.975,1045.0011],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p2_condP_Valid/res/output_SecndPass_164.mat')