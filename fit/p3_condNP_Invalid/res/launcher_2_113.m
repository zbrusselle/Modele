addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p3_condNP_Invalid');
[x,fval] = patternsearch(statMod,[99.5249,56.1566,1278.0674],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p3_condNP_Invalid/res/output_SecndPass_113.mat')