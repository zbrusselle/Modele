addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p1_condNP_Valid');
[x,fval] = patternsearch(statMod,[7.2,89.2811,3668.0115],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p1_condNP_Valid/res/output_SecndPass_98.mat')