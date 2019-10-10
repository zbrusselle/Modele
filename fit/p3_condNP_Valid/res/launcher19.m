addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p3_condNP_Valid');
[x,fval] = patternsearch(statMod,[70.2702,15.359,4767.2853],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p3_condNP_Valid/res/output_FirstPass_19.mat')