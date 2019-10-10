addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p25_condP_Invalid');
[x,fval] = patternsearch(statMod,[6.5722,73.0508,3186.1215],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p25_condP_Invalid/res/output_SecndPass_62.mat')