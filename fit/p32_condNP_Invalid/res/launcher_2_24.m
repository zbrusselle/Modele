addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p32_condNP_Invalid');
[x,fval] = patternsearch(statMod,[13.0338,53.9316,2797.9551],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p32_condNP_Invalid/res/output_SecndPass_24.mat')