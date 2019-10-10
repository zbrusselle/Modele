addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p5_condP_Valid');
[x,fval] = patternsearch(statMod,[22.7843,49.8094,4504.2624],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p5_condP_Valid/res/output_FirstPass_6.mat')
