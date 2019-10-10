addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p22_condP_Valid');
[x,fval] = patternsearch(statMod,[40.1608,7.5767,1199.3808],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p22_condP_Valid/res/output_SecndPass_174.mat')