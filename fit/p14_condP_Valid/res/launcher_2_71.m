addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p14_condP_Valid');
[x,fval] = patternsearch(statMod,[17.4385,64.3625,4710.4181],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p14_condP_Valid/res/output_SecndPass_71.mat')