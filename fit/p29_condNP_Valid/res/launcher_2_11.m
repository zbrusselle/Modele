addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p29_condNP_Valid');
[x,fval] = patternsearch(statMod,[6.9086,94.2616,2610.2749],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p29_condNP_Valid/res/output_SecndPass_11.mat')