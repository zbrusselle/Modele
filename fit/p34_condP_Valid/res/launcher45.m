addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p34_condP_Valid');
[x,fval] = patternsearch(statMod,[88.9431,11.4622,3319.57],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p34_condP_Valid/res/output_FirstPass_45.mat')
