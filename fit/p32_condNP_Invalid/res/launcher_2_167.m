addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p32_condNP_Invalid');
[x,fval] = patternsearch(statMod,[15.0024,51.8624,3182.4206],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p32_condNP_Invalid/res/output_SecndPass_167.mat')