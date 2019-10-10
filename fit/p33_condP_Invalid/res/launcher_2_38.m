addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p33_condP_Invalid');
[x,fval] = patternsearch(statMod,[5.8409,65.138,2151.9279],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p33_condP_Invalid/res/output_SecndPass_38.mat')