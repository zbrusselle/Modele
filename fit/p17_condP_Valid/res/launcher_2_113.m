addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p17_condP_Valid');
[x,fval] = patternsearch(statMod,[21.5993,98.8079,4907.9348],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p17_condP_Valid/res/output_SecndPass_113.mat')