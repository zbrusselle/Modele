addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p32_condP_Invalid');
[x,fval] = patternsearch(statMod,[2.4775,49.7795,4938.1519],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p32_condP_Invalid/res/output_FirstPass_21.mat')
