addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p20_condP_Valid');
[x,fval] = patternsearch(statMod,[60.8825,43.9723,3061.8835],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p20_condP_Valid/res/output_SecndPass_119.mat')