addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p3_condNP_Invalid');
[x,fval] = patternsearch(statMod,[19.697,85.568,4710.3705],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p3_condNP_Invalid/res/output_SecndPass_18.mat')