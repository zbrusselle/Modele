addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p33_condP_Valid');
[x,fval] = patternsearch(statMod,[19.5443,80.0678,4174.162],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p33_condP_Valid/res/output_FirstPass_37.mat')