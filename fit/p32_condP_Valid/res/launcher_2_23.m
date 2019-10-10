addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p32_condP_Valid');
[x,fval] = patternsearch(statMod,[5.4546,87.8844,2035.8923],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p32_condP_Valid/res/output_SecndPass_23.mat')