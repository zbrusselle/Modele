addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p34_condNP_Valid');
[x,fval] = patternsearch(statMod,[12.8114,91.918,3927.7053],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p34_condNP_Valid/res/output_SecndPass_51.mat')