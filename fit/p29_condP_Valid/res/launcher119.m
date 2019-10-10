addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p29_condP_Valid');
[x,fval] = patternsearch(statMod,[22.357,85.4072,4627.4481],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p29_condP_Valid/res/output_SecndPass_119.mat')