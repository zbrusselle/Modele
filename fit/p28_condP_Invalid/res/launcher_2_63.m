addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p28_condP_Invalid');
[x,fval] = patternsearch(statMod,[15.0895,64.2831,4491.2514],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p28_condP_Invalid/res/output_SecndPass_63.mat')