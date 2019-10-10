addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p33_condNP_Invalid');
[x,fval] = patternsearch(statMod,[7.1828,77.5513,1581.4757],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p33_condNP_Invalid/res/output_FirstPass_34.mat')
