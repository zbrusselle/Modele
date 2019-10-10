addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p20_condP_Invalid');
[x,fval] = patternsearch(statMod,[15.9609,76.0344,4492.3094],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p20_condP_Invalid/res/output_SecndPass_20.mat')