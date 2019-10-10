addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p32_condNP_Valid');
[x,fval] = patternsearch(statMod,[7.8559,88.8849,2655.8695],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p32_condNP_Valid/res/output_SecndPass_132.mat')