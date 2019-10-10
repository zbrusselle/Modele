addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p28_condNP_Valid');
[x,fval] = patternsearch(statMod,[2.9075,63.0333,1588.4827],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p28_condNP_Valid/res/output_SecndPass_57.mat')