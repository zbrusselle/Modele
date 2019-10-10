addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p9_condNP_Invalid');
[x,fval] = patternsearch(statMod,[4.2732,47.225,1577.5252],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p9_condNP_Invalid/res/output_SecndPass_107.mat')