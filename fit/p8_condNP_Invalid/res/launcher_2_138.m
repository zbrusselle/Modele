addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p8_condNP_Invalid');
[x,fval] = patternsearch(statMod,[6.4299,25.3884,2481.113],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p8_condNP_Invalid/res/output_SecndPass_138.mat')