addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p25_condNP_Valid');
[x,fval] = patternsearch(statMod,[13.8666,66.2786,4807.0467],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p25_condNP_Valid/res/output_SecndPass_109.mat')