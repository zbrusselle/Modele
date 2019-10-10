addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p17_condP_Invalid');
[x,fval] = patternsearch(statMod,[9.8612,42.3021,1932.6842],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p17_condP_Invalid/res/output_SecndPass_129.mat')