addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p1_condNP_Valid');
[x,fval] = patternsearch(statMod,[12.9416,37.9757,4772.3562],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p1_condNP_Valid/res/output_SecndPass_60.mat')