addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p25_condP_Valid');
[x,fval] = patternsearch(statMod,[81.4924,90.5992,635.1341],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p25_condP_Valid/res/output_SecndPass_4.mat')