addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p3_condP_Invalid');
[x,fval] = patternsearch(statMod,[9.5329,64.3688,2974.1529],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p3_condP_Invalid/res/output_SecndPass_77.mat')