addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p9_condP_Invalid');
[x,fval] = patternsearch(statMod,[51.1941,60.3767,1059.7307],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p9_condP_Invalid/res/output_SecndPass_137.mat')