addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p32_condP_Valid');
[x,fval] = patternsearch(statMod,[16.9664,60.5486,4255.4651],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p32_condP_Valid/res/output_SecndPass_29.mat')