addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p2_condNP_Valid');
[x,fval] = patternsearch(statMod,[2.5135,42.1112,920.5014],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p2_condNP_Valid/res/output_FirstPass_37.mat')
