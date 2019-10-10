addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p2_condNP_Valid');
[x,fval] = patternsearch(statMod,[4.5644,36.5576,1535.0306],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p2_condNP_Valid/res/output_SecndPass_82.mat')