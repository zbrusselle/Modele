addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p34_condP_Valid');
[x,fval] = patternsearch(statMod,[15.2007,81.9292,4528.5035],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p34_condP_Valid/res/output_SecndPass_190.mat')