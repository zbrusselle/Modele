addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p24_condNP_Invalid');
[x,fval] = patternsearch(statMod,[9.1313,67.6419,3929.0162],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p24_condNP_Invalid/res/output_SecndPass_40.mat')