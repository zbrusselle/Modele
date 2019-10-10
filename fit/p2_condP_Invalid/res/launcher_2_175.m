addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p2_condP_Invalid');
[x,fval] = patternsearch(statMod,[89.8655,96.3286,1472.0099],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p2_condP_Invalid/res/output_SecndPass_175.mat')