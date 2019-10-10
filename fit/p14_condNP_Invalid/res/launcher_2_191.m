addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p14_condNP_Invalid');
[x,fval] = patternsearch(statMod,[20.295,85.7524,4609.4079],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p14_condNP_Invalid/res/output_SecndPass_191.mat')