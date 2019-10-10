addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p25_condNP_Valid');
[x,fval] = patternsearch(statMod,[81.219,19.1616,4791.5012],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p25_condNP_Valid/res/output_FirstPass_18.mat')
