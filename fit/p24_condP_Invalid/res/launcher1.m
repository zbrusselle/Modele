addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p24_condP_Invalid');
[x,fval] = patternsearch(statMod,[13.4684,1.9793,4480.5335],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p24_condP_Invalid/res/output_FirstPass_1.mat')
