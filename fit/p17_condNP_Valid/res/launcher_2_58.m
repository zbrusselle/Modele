addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p17_condNP_Valid');
[x,fval] = patternsearch(statMod,[2.8936,83.0272,1460.3827],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p17_condNP_Valid/res/output_SecndPass_58.mat')