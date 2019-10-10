addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p9_condNP_Invalid');
[x,fval] = patternsearch(statMod,[9.4988,58.8301,2693.9861],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p9_condNP_Invalid/res/output_SecndPass_140.mat')