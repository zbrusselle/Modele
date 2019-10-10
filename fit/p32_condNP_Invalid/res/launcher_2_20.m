addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p32_condNP_Invalid');
[x,fval] = patternsearch(statMod,[19.6431,82.9596,4444.7197],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p32_condNP_Invalid/res/output_SecndPass_20.mat')