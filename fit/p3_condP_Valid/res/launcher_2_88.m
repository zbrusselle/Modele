addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p3_condP_Valid');
[x,fval] = patternsearch(statMod,[12.349,90.9521,3638.2534],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p3_condP_Valid/res/output_SecndPass_88.mat')