addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p32_condP_Invalid');
[x,fval] = patternsearch(statMod,[77.2267,24.8967,4288.6185],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p32_condP_Invalid/res/output_FirstPass_22.mat')
