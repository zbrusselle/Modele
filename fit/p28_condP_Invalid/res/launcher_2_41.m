addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p28_condP_Invalid');
[x,fval] = patternsearch(statMod,[14.9258,54.425,4436.1298],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p28_condP_Invalid/res/output_SecndPass_41.mat')