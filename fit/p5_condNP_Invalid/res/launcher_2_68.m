addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p5_condNP_Invalid');
[x,fval] = patternsearch(statMod,[8.6169,31.5141,2104.0903],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p5_condNP_Invalid/res/output_SecndPass_68.mat')