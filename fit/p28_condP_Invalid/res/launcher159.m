addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p28_condP_Invalid');
[x,fval] = patternsearch(statMod,[6.9536,30.8914,2013.3445],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p28_condP_Invalid/res/output_SecndPass_159.mat')