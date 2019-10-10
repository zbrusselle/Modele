addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p5_condP_Invalid');
[x,fval] = patternsearch(statMod,[62.1481,29.4245,2789.5161],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p5_condP_Invalid/res/output_SecndPass_166.mat')