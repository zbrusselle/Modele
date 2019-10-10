addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p8_condNP_Invalid');
[x,fval] = patternsearch(statMod,[97.1585,3.673,1112.305],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p8_condNP_Invalid/res/output_SecndPass_176.mat')