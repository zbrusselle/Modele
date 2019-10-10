addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p29_condP_Invalid');
[x,fval] = patternsearch(statMod,[14.6784,70.1824,3656.1888],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p29_condP_Invalid/res/output_SecndPass_198.mat')